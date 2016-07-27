# Introduction à la technique

## Principe

Les ondes ultras-sonores sont des ondes acoustiques \(&gt;20 kHz\), elle peuvent se propager au travers du corps humain. La propagation du signal est fonction des propriétés des tissus traversés. La formation du signal échographique est composé de la réflexion des ondes sur une interface tissulaire de densité différente, et la diffusion des ondes ultras sonores sur les petites particules.

Pour former une image, l’échographe utilise le principe de réflexion des ultrasons : une sonde émet une salve d’ultrasons puis se met à l’écoute des échos réfléchis. Une image échographique est composé de l'ensemble des effets d'atténuation, de réflexion, réfraction et de dispersion. Le corps humain étant un milieu principalement constitué d’eau, les ultrasons s’y déplacent à une vitesse de 1460 $$ m.s^{-1}  $$. Lorsque les ultrasons rencontrent des tissus, graisses ou organes, leur vitesse de propagation change, elle peut alors varier entre 1480 et 1600 $$ m.s^{-1}  $$.

| Milieu | Vitesse de propagation ($$ m.s^{-1} $$) |
| :--- | :--- |
| Air | 330 |
| Eau | 1500 |
| Tissus mous | 1450-1700 |
| Os | 3000-4000 |

_Table 1 : La vitesse de propagation des ultrasons pour les médias différents et leur densité dans l'image CT [[1]](http://www.google.com/patents/WO2006077338A1?cl=en)._

Grâce à ces différences de vitesse de propagation, couplées à la masse volumique de l'organe, chaque organe de notre corps a une [impédance acoustique](https://alienor134.gitbooks.io/echopen-guide-book/content/glossaire.html) qui lui est propre. Cela permet donc une réflexion partielle des ultrasons entre deux tissus de caractéristiques acoustiques différentes.

| Milieu | Impédance acoustique ($$ kg.m^{-2}.s^{-1}\times 10^{-6} $$) |
| :--- | :--- |
| Air | 0,0004 |
| Poumon | 0,26 |
| Squelette | 3,8-7,4 |
| Tissus mous | 1,3-1,7 |
| Eau | 1,5 |

_Table 2 : Impédances acoustiques caractéristiques de différentes parties du corps [[2]](http://www.google.com/patents/WO2006077338A1?cl=en)._

Ces valeurs montrent qu’il peut y avoir de grandes différences d’impédance dans le corps telle qu’entre les tissus mous et de l'air et entre les tissus mous et des tissus durs \(os, pierres, corps étrangers\). Ces interfaces sont très réfléchissante ou très "échogènes" \(générateurs d'écho\). Derrière ces interfaces, une zone d'ombre apparaît sur les images échographiques du fait que le signal sonore a été quasiment entièrement réfléchi..

## Architecture du système entier

L'appareil permettant de réaliser des échographies est appelé échographe. Il est constitué :

* D’un transducteur permettant l'émission et la réception d'ultrasons  
* Du système analogique et numérique qui transforme le signal reçu en image  
* D'une console de commande permettant d’effectuer différents réglages   
* D'un système d'alimentation et de gestion des données des données.  

![analyse fonctionnelle](/images/functional_analysis.jpg)

Pour réaliser une échographie, le médecin applique un gel sur la peau, ce gel est appelé gel de couplage. Ce gel permet d’améliorer la transmission du son entre la sonde et le corps.

## Histoire de l'échographie en temps réel

Le premier scanner temps réel en deux dimensions \(ou B-scanner\) a été développé par Walter Krause et Richard Soldner. Il est commercialisé sous l'appellation Vidoson® par Siemens Medical Systems Allemagne en 1965. Le Vidoson® construit l’image échographique à l’aide de trois transducteurs rotatifs placés face à un miroir parabolique \(ainsi le milieu est scanné selon des lignes parallèles\). Les transducteurs et le miroir sont couplés ensemble par de l’eau, on a ainsi une bonne adaptation d’impédance avec le corps. Les images sont constituées de 120 lignes et la cadence est de 15 images par seconde.  
XPROBLEME  
James Griffith et Walter Henry ont produit un échographe temps réel à balayage mécanique en 1973. Le transducteur insone un secteur de 30 degrés, avec une image de bonne qualité. Le design de cette sonde a été décrite comme l'une des étapes clé dans le développement de l'échocardiographie. Le premier échographe commercial équipé d’une barrette linéaire de transducteurs, le "Multiscan system", a été produit en 1972 par Nicolaas Bom, Paul Hugenholtz en collaboration avec une société néerlandaise \(Organon Teknika\). Cet échographe était principalement utilisé en cardiologie.

Vers le milieu des années 1980, les transducteurs abdominaux curvilignes ou convexes sont apparus sur le marché. Ils ont l’avantage d’avoir un meilleur ajustement au niveau de l'abdomen et d’avoir un champ de vision plus large. Les sondes curvilignes ont complètement remplacé les sondes linéaires à la fin des années 1980. Ensuite, l’amélioration de la résolution et de la qualité globale de l'image c’est concentrée principalement sur l'augmentation du nombre de transducteurs \(de 64 à 128\). Des travaux ont également été fait sur la technologie des transducteurs \(large bande et large gamme dynamique\), l’ouverture des barrettes \(plus de transducteurs tirent en même temps\), des rapidités de calcul plus importantes, les algorithmes de focalisation en réception \(augmentation du nombre de tâches focales le long de la ligne de mesure\), incorporation du TGC \(contrôle du gain temps réel\) [[3]](http://www.google.com/patents/WO2006077338A1?cl=en).

Dans les années 1990 les avancées importantes ont été [[4]](http://www.google.com/patents/WO2006077338A1?cl=en):

* Le traitement du signal est devenu entièrement analogique. On a la chaîne suivante :
  **\[transducteur\] -&gt; \[beamformer\] -&gt; \[traitement du signal\] -&gt; \[convertisseur d’image\] -&gt; \[moniteur\]**

* L'utilisation de transducteurs larges bandes avec une grande ouverture. Le nombre de canaux dans les systèmes haut de gamme va jusqu'à 256 et plus récemment  1024 \(barrette 2-D\).


* La phase des échos est traitée en plus de l'amplitude avec la reconstruction cohérente des images. La technique améliore de deux fois la quantité des données donnant des images haute résolution. La cadence d’imagerie est également augmentée.  

* L'avènement de la technique d’imagerie utilisant les harmoniques \(multiples de la fréquence de travail\) phénomène non-linéaire dû à la propagation des ondes dans les tissus.  

![différentes dimensions](/images/diffecho.jpg)

Les progrès technologiques ont eu un impact significatif sur l’évolution des échographies, en ce qui concerne le traitement d'image et les sondes [[5]](http://www.ncbi.nlm.nih.gov/pubmed/9602842),[[6]](http://www.brl.uiuc.edu/Publications/1998/OBrien-JJAP-2781-1998.pdf). La technologie des sondes en particulier, qui a évolué des systèmes mono-éléments \(sonde sectorielle mécanique\) à des barrettes linéaires et finalement des systèmes 3D en temps réel.

Récemment sont apparues les sondes compatibles avec un smartphone \(2009\) [[7]](http://uix.sagepub.com/content/30/1/21.short),[[8]](https://www.technologyreview.com/s/413222/ultrasound-to-go/). Elle est uniquement compatible avec Windows \(Microsoft, Redmond, Washington\). Les défis technologiques qui ont dus être surmontés étaient principalement la consommation d'énergie de la batterie et la vitesse de transfert des données. Le second était la création des algorithmes nécessaires à l'affichage de l'image sur l'écran du smartphone. Un dispositif a été approuvé pour une utilisation par la Food and Drug Administration \(FDA\) en 2011 après avoir rencontré des exigences réglementaires strictes pour les applications médicales [[9]](http://mobihealthnews.com/10165/fda-approves-mobisantes-smartphone-ultrasound/),[[10]](http://www.engineeringforchange.org/ultrasound-is-now-on-smart-phones-engineering-for-change/). Aujourd'hui une variété de sondes spécialisées ont été développées  couvrant une gamme de fréquences de 2 à 18 MHz.

Utilisation médicale des ultrasons
L'échographie permet d’étudier de nombreux organes de l'abdomen, du petit bassin, du cou \(thyroïde, foie, rate, pancréas, reins, vessie\) ainsi que les vaisseaux sanguins, les ligaments et le cœur. Elle permet plus précisément de rechercher des anomalies \(telles que des tumeurs, des kystes et des malformations\) et de guider des prélèvements \(ponctions\).

Thérapeutique :

* Lithotriteur \(désintégration de calculs rénaux\)  
* Le traitement thermique \(ligaments, tendons, etc.\)      
* Ultrasons focalisés à haute intensité \(chirurgie, par exemple dans le cerveau profond\)  

Diagnostic :

* L'échographie \(cadence &gt; 30 images \/ seconde\)\)  
* Technique Doppler \(mesure de la vitesse d'écoulement du sang\) de densitométrie osseuse \(200 kHz 800 kHz\)  

