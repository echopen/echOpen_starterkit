## The detection function

First, an acoustic signal needs to be generated for the insonification of the medium. Then the echoes reflected by the tissues encountered throughout the studied area need to be recorded. Two subfunctions, one for emission and one for reception, need to be created. Emission and reception are both realized with the transducer (see acoustic section). A sweeping subfunction is responsible for controlling the motor to scan the medium and direct the transducer in the desired directions (see mechanical section). The commands of these subfunctions are described in the electronic section.

![analyse fonctionnelle de la partie détection](/images/sensing.png)  
_Figure 6: Functional analysis of the detection part_

### Acoustic part

#### Transducer

![conversion électro-mécanique](/images/transducer.png)  
_Figure 7: Piezoelectric effect_

An ultrasound transducer converts an electric signal into an ultrasound signal and vice versa. It is enabled by a piezoelectric element, which can expand and contract in response to a potential difference. The medium surrounding the piezoelectric element is affected by this deformation and a wave is created (like when a stone is dropped into water). Therefore, an acoustic wave can be created (in the ultrasonic range, several MHz) from a potential difference (emission part). Conversely, when the piezoelectric element is deformed (eg. when an acoustic wave propagate through it) a potential difference can be measured between its two faces. The medium deformation is converted into an electric signal: the piezoelectric element can be used as a sensor (reception part).

The piezoelectric element can be considered as a 3-port network, with two mechanical ports (being the front and the back of the element) and one electrical port (being the electronic connection to the system) [[11]](https://www.amazon.com/Acoustic-Waves-Devices-Processing-Prentice-Hall/dp/0130030473/168-7062977-8650263?ie=UTF8&*Version*=1&*entries*=0), [[12]](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=544509&url=http%3A%2F%2Fieeexplore.ieee.org%2Fxpls%2Fabs_all.jsp%3Farnumber%3D544509). 

The choice of the piezoelectric element is important as it sets the frequency of the emitted ultrasonic wave. It corresponds to the maximum gain in the emission/reception spectrum of the transducer (given by the manufacturer), and it depends on the geometry of the element. The working frequency influences penetration depth of the wave: the higher the frequency, the higher the attenuation of the wave for a given propagation distance.

| Ultrasound frequency (MHz) | Maximum examination depth (cm) |
| :--- | :--- |
| 2,5 - 3,5 | &gt;15 |
| 5 | 10 |
| 7,5 | 5-6 |
| 10-12 | 2-3 |

_Table 4: Maximum ultrasound examination depth for different frequencies [[2]](http://www.google.com/patents/WO2006077338A1?cl=en)._

When it is not emitting a signal, the transducer is used in listening mode. The emitted wave is reflected, refracted, scattered and absorbed by tissues, and part of the emitted signal is sent back towards the probe. It causes vibration of the transducer which converts the mechanical signal into an electrical signal

The piezoelectric element is excited by an analog [pulse](https://alienor134.gitbooks.io/echopen-guide-book/content/glossaire.html) and vibrates on both its sides. The wave of interest is the one which propagates inside the medium of interest. Therefore the wave propagating in the other direction needs to be attenuated, as it can mask the signal of interest if it is reflected inside the probe back to the piezoelectric element. This attenuation is achieved using a backing medium.

![backing](/images/need_backing.png)  
_Figure 8: Ultrasound waves are emitted on both sides of the piezoelectric element_

There is an impedance mismatch between the piezoelectric element and the examination medium. To minimise energy losses due to reflection at the interface, an impedance matching layer is placed on the piezoelectric element surface.

Finally, the focusing of the wave beam needs to be ensured. For common devices, composed of an array of transducers, focusing is achieved by wave interferences [[13]](http://www.ob-ultrasound.net/lineararrays.html). However, if there is only one emitting source (as is the case for the echOpen probe), interferences cannot be obtained. The focusing is achieved because of the shape of the output. A concave shape allows a focusing of the beam. The focusing distance depends on the characteristic frequency of the piezoelectric element, which is linked to the penetration depth. The focusing distance is given by a concave shape of the piezoelectric element itself, the impedance matching layer or a lens.

![](/images/transducer_action.png)  
_Figure 9: Pulse echo method [[14]](https://facmed.univ-rennes1.fr/wkf/stock/RENNES20090317042111cpiszkorUS2009.pdf), [[15]](https://hal.archives-ouvertes.fr/file/index/docid/54260/filename/Memoire_these_Wilm.pdf)_

##### Piezoelectric material selection

Le composant le plus important du transducteur est l'élément piézoélectrique. Beaucoup de matières actives différentes peuvent être utilisées dans la conception d’un transducteur ; tous ont leurs avantages et leurs inconvénients. Les différents matériaux piézo-électriques utilisés sont les piézoceramics [[16]](http://www.med.nyu.edu/skirball-lab/turnbulllab/PDFS/LockwoodIEEEUFFC94.pdf), [[17]](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=655629&url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel3%2F58%2F14299%2F00655629.pdf%3Farnumber%3D655629), les polymères piézoélectriques [[18]](http://www.sciencedirect.com/science/article/pii/0161734689900011), [[19]](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=985701&url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel5%2F58%2F21244%2F00985701.pdf%3Farnumber%3D985701), et les monocristaux [[20]](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=883543&url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel5%2F58%2F19117%2F00883543.pdf%3Farnumber%3D883543). Les polymères piézo-électriques tel que le poly \(fluorure de vinylidène\) PV \[PVDF\] et co-polymère \(DFTrFE\) ont une faible impédance acoustique \(~ 4 MRayl\) qui est idéal pour l’adaptation d’impédance acoustique entre le transducteur et le tissu humain \(~ 1,5 MRayl\).[[21]](http://ieeexplore.ieee.org/xpl/login.jsp?tp=&arnumber=1251138&url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel5%2F58%2F28006%2F01251138.pdf%3Farnumber%3D1251138)
Comme chaque matériau piézoélectrique a une fréquence de résonance propre qui détermine la profondeur de pénétration, on peut disposer plusieurs transducteurs sur la sonde afin d’avoir un éventail de fréquences de travail. La qualité du matériau est importante: il faut que la réponse électromécanique varie peu d'un milieu à l'autre.

![graphique piézos](/images/piezoelement.png)

| Piézoélectriques | polymères | Monocristaux | Piézocéramiques |
| :--- | :--- | :--- | :--- |
| Avantages | **Impédance acoustique faible**: \(~4 MRayl. Idéal pour l’adaptation d’impédance entre le transducteur et les tissus \(~1,5 MRayl\)  **Constante diélectrique faible** idéal pour l’adaptation d’impédance électrique | **Bon couplage électromécanique** Meilleur contraste de l’image  **Constante diélectrique faible**  idéal pour les transducteurs mono-éléments sensibles à grande ouverture | **Coefficients de couplage électromécanique élevés** |
| Défauts | **Coefficients de couplage faibles** | **Impédance acoustique importante** | **Impédance acoustique élevée** **grandes constantes diélectriques** |

_comparaison des propriétés de différents matériaux piézoélectriques_

##### Sélection du backing

On cherche à atténuer au maximum les ondes se propageant du mauvais côté du piézoélectrique. Il faut pour cela un matériau fortement inhomogène. Les résultats de Desilet et al \[22\] et expériences d’EchOpen montrent qu’il faut privilégier un matériau de faible impédance. \(de 3 à 5 MRayl\) pour améliorer la forme du pulse.

##### Sélection de l’adaptation d’impédance

Elle permet d’éviter une réflexion de l’onde à l’interface piézoélectrique\/surface à sonder. La valeur de l’impédance du milieu d’adaptation, dans le case de régime impulsionnel, pour une seule lame d’adaptation, doit vérifier:

![](/images/impedance.png)

Les lames généralement utilisées sont des lames quart d’onde: l’épaisseur correspond au quart de la longueur d’onde caractéristique du piézoélectrique dans le milieu de propagation à explorer.

### Réalisation de la partie mécanique

#### Sonde à balayage

![](/images/Sonde_a_balayage.png)

Lorsque les ultrasons ne sont envoyés que dans une seule direction \(un seul transducteur, un seul tir\), l’échographe n’obtient qu’une ligne d’image. Afin d’avoir une image complète, il faut effectuer un balayage sur la surface à échographier. Si, autrefois, c’était au praticien de faire le balayage, de nos jours les sondes le font automatiquement. C'est grâce à l'automatisme du balayage que l'on dit souvent que l'échographie est "dynamique".

#### Moteur

Le moteur permet d’effectuer le balayage de la surface à explorer. Il faut adapter le type de moteur au balayage choisi [[23]](http://echopen.org/index.php/Balayage). On fixe le \(ou les\) transducteurs sur la tête du moteur. Il faut savoir qu'un balayage oscillant par le moteur implique des accélérations et des décelerations qui bruitent le signal. On peut néanmoins transformer la rotation du moteur en mouvement pendulaire.

Le moteur utilisé doit être asservi en vitesse, angle, précision angulaire.
Un moteur à courant continu peut être utilisé, à condition d’avoir un bon encodeur pour toujours connaître précisément la position. Le moteur synchrone pas-à-pas est moins contraignant en terme d’asservissement et permet une grande précision angulaire, car on peut faire des micro-pas.

_vitesse de balayage_: constante, 7,5 tours\/sec  
_déplacement_: horaire et anti-horaire \(oscillations\)  
_précision_: de 30 à 1060 pas en 60°

![cahier des charges du moteur](/images/charges_motor.png)  
_exemple de cahier des charges_

### Réalisation de la partie électronique

#### Alimentations

##### Alimentation générale

Pour les tests, il faut privilégier une alimentation continue de laboratoire plutôt qu’une pile. En effet le débit de courant étant contrôlé, on évite de griller les composants au cours du montage avec une telle alimentation. En revanche, le pile sera préférable à terme, une fois la sonde fonctionnelle,  car il y a moins de bruits.

##### Circuit d’adaptation

Tous les composants qui seront utilisés par la suite ne fonctionnent pas à la même tension, il faut donc un circuit pour diviser la tension d’entrée qui est de l’ordre de 18V.
![cahier des charges alimentation](/images/converter_DC.png)  
_Fonction attendue, exemples de valeurs._

##### Commande du moteur

Le moteur est commandé par un microcontrôleur, qui intervient dans d’autres sous-fonctions afin de synchroniser les sous-fonctions. Par exemple l’émission du pulse et la commande du moteur peuvent être synchronisées.
Il faut faire attention au courant d’alimentation au cours des tests pour ne pas griller le moteur!

![fonction attendue](/images/commande_moteur.png)  
_Fonction attendue_

##### Commande du pulse

![fonction attendue](/images/pulsing.png)  
_Fonction attendue_

###### Circuit haut voltage

Pour produire le pulse qui va simuler le piézoélectrique, il faut atteindre -100V car le gain de la fonction caractéristique du transducteur est faible. Si on veut produire une onde acoustique de l’ordre de 10% de la pression atmosphérique, il faut une telle tension en entrée. [[24]](http://www.sfrnet.org/rc/org/sfrnet/htm/Article/2011/20110524-112842-171/src/htm_fullText/fr/polyBasesPhysiques_14.pdf)

![](/images/hvc.jpg)  
_Fonction attendue_

###### Pulser

A partir d’une commande sous forme d’un pulse logique et d’une alimentation continue de -100V, on génère un pulse de -100V de la même durée. On doit passer par l’intermédiaire d’un pulser car les circuits de commande qui permettent de créer un pulse logique ne fonctionnent pas à des tensions si élevées.

![](/images/Pulser.PNG)  
_Fonction attendue_

###### Commande du pulser

La durée du pulse doit correspondre à la moitié de la période caractéristique du transducteur pour obtenir le meilleur taux de conversion \(la réponse attendue est sous forme d’un pulse ultra-sonore\).
La fréquence d’émission de pulse est choisie en fonction de la vitesse du moteur, et de la précision souhaitée. Pour un moteur pas-à-pas on peu décider d’envoyer un pulse tous les X pas. La commande du pulse doit alors être couplée à la commande du moteur. Elle est contrôlée par un microcontrôleur.

### Mode réception

#### Premier filtrage

Réponse d’un transducteur à un pulse électrique:  
![](/images/reponse_trans.png)

**Explication**: la conversion de l’énergie électrique en énergie mécanique n’est pas totale: lorsqu’on envoie un pulse sur le piézoélectrique, une grande partie de l’énergie électrique est réfléchie. La réponse impulsionnelle électrique sous simulation électrique du transducteur n’est pas une impulsion pure: il y a une résonance de temps caractéristique long. Il est si long que lorsque les échos en retour de l’onde sonore, qui vont exciter le piézoélectrique, vont produire une réponse qui va s’ajouter à celle de résonance. Or ce sont ces échos qui nous intéressent. Comme la fréquence de résonance est faible, on utilise un filtre passe-haut pour couper la résonance et ne récupérer que le signal d'intérêt. Il faut absolument effectuer ce premier filtrage car la résonance basse-fréquence est de forte amplitude et risque de griller les composants des circuits suivants.

![Signal d’intérêt](/images/reponse_filtre.jpg)  
_Signal d'intérêt_

On ne veut analyser que l’écho retransmis par les tissus après qu’on ait envoyé un pulse. Tout le reste n’est que du bruit. L’acquisition de données est géré par un microprocesseur. Une solution est de synchroniser le début de l’acquisition avec l’émission d’un pulse, et de fixer la durée d’écoute dt en fonction de la profondeur de pénétration de l’onde dans les tissus \(liée à la fréquence fc\), en considérant comme vitesse moyenne de propagation de l’onde sonore dans les tissus la vitesse d’une onde acoustique dans l’eau. De plus, il faut protéger les circuits suivants de la réponse électrique du transducteur au pulse \(cette réponse est de l’ordre de 100V et les hautes fréquences du pulse de réponse n’ont pas été filtrées par le passe-haut\). On utilise pour cela un T\/R switch.

![emission_reception](/images/ER_modes.png)  
_Différents modes du circuit analogique_
