# Technical introduction

## Principle

Ultrasonic waves are high frequency acoustic waves (more than 20 kHz) which can propagate through the human body. The propagation depends on the mechanical properties of the traversed tissues. The ultrasound signal exists in the superposition of the waves reflected on interfaces between tissues with different impedance, and of the scattering of ultrasonic waves by small particles.

To create an image the ultrasound scanner emits an ultrasound pulse and listen to the reflected echoes. As the human body is mainly composed of water, ultrasounds propagate at a speed close to 1460 $$ m.s^{-1}  $$. When ultrasound waves propagate through tissues, fat or organs, their propagation speed varies from 1450 to 1700 $$ m.s^{-1}  $$.

| Medium | Propagation speed ($$ m.s^{-1} $$) |
| :--- | :--- |
| Air | 330 |
| Water | 1500 |
| Soft tissues | 1450-1700 |
| Bones | 3000-4000 |

_Table 1 : Propagation speed of ultrasound for different media [[1]](http://www.google.com/patents/WO2006077338A1?cl=en)._

Due to the differences of the mechanical properties (Lamé coefficients and density) of each organ and tissue, the acoustic waves are partially reflected at each interface between two different media.

| Medium | Acoustic impedance ($$ kg.m^{-2}.s^{-1}\times 10^{-6} $$) |
| :--- | :--- |
| Air | 0,0004 |
| Lung | 0,26 |
| Bones | 3,8-7,4 |
| Soft tissues | 1,3-1,7 |
| Water | 1,5 |

_Table 2 : Acoustic impedances for different parts of the human body [[2]](http://www.google.com/patents/WO2006077338A1?cl=en)._

These numbers show that there can be large impedance differences in the body such as between soft tissues and air or between soft tissues and hard tissues (bones, stones, foreign bodies). These interfaces are highly reflective or echogenic (generator of echoes). Behind these interfaces, a shadow area appears on the ultrasound images as the signal has been almost totally reflected.

## Architecture of the whole system

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

