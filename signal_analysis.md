## Fonction analyse du signal

![](/images/signal_analysis.png)  
_Analyse fonctionnelle_

L’approche présentée ici maximise l’utilisation de traitement analogique du signal, afin de réduire la fréquence d’échantillonnage nécessaire pour la partie numérique, pour avoir un moindre coût et une moindre consommation. Le circuit est sensible aux bruits. Le traitement analogique permettrait un traitement du signal accessible plus facilement et l’ouverture sur de nouvelles techniques, comme l’[echosthétoscopie Doppler](https://alienor134.gitbooks.io/echopen-guide-book/content/glossaire.html).

### Amplification TGC

Lorsque le son se propage dans les tissus mous, il est atténué. Cette atténuation augmente linéairement avec la fréquence, donc plus la fréquence de travail est importante, plus la profondeur de pénétration du son sera faible. Dans l’échographe, on compense cette atténuation avec une compensation de gain temporel \(Time Gain Compensation\). L’atténuation dans un tissu uniforme suit une loi exponentielle décroissante de la distance parcourue. Le TGC doit donc être une fonction exponentielle croissante de la distance pour que le produit soit une constante, et qu’on s’affranchisse de la perte de signal due à la distance. Dans le cas de l’échosthétoscope, les tissus traversés sont d’impédance différentes, la loi d’atténuation n’est pas une simple exponentielle. On note en revanche qu’une approximation linéaire pour le TGC est convenable.  
![exemple de TGC](/images/tgc.png)  
_Exemple de TGC_

### Second filtrage

Les signal de départ est bruité, et le passage par l’amplificateur TGC rajoute du bruit. Il faut filtrer le signal avec un filtre passe bande de fréquence de résonance proche de fc. On ne pouvait pas utiliser un filtre passe-bande dès le début car les trop grandes différences d’amplitude entre la résonance basse-fréquence et les échos superposés auraient posé problème pour choisir les composants.

![ensemble des signaux](/images/signals.png)  
_étapes du traitement du signal_

### Détection d’enveloppe

On s’intéresse à l’énergie du signal reçu en écho, qui est caractéristique des tissus rencontrés par l’onde et qui l’ont réfléchie \(le coefficient de réflexion dépend en effet du type d’interface rencontré\). Il faut récupérer l’énergie du signal, contenue dans l’enveloppe.  
![Détection d'enveloppe](/images/detection_enveloppe.png)  
_Détection d'enveloppe_

### Conversion analogique numérique et calcul de pixels

La sortie du détecteur d’enveloppe est ensuite échantillonnée pour être analysée et envoyée sous forme numérique à une application en interface avec l’utilisateur. On utilise pour ça un CAN, dont il faut judicieusement choisir la fréquence d'échantillonnage.

Pour chaque pulse envoyé et chaque slave d’échos correspondants reçus, on va tracer une ligne de pixels correspondant à la ligne dans l’espace qui a été sondée. Le temps d’arrivée d’une slave va correspondre à la distance qui a été parcourue. Grâce au temps de trajet entre l’émission et la réception des ultrasons, et connaissant les vitesses de propagation dans les tissus, on peut déterminer la distance qui sépare les différentes interfaces. On peut donc cartographier le milieu traversé par l’onde en fonction de la profondeur, et ce pour chaque ligne d’acquisition.

![pixels](/images/pixels.png)  
_exemple de résultat_

On remarque que la valeur pour chaque point échantillonné suffit, plutôt que de calculer l’intégrale entre deux points échantillonnés. En effet, c’est la différence entre les valeurs de l’énergie contenue dans l’enveloppe \(donc la différence des milieux traversés\) qui nous intéresse, et non la valeur entière de l’intégrale. à revoir: intensité acoustique prop au log de la pression acoustique
On peut aussi intégrer un programme pour passer le la forme conique de l’image reconstruite \(due à la position unique du transducteur qui balaye en rotation\) à une forme rectangulaire.
