# Technical introduction

## Principle

Ultrasonic waves are high frequency acoustic waves \(more than 20 kHz\) which can propagate through the human body. The propagation depends on the mechanical properties of the traversed tissues. The ultrasound signal exists in the superposition of the waves reflected on interfaces between tissues with different impedance, and of the scattering of ultrasonic waves by small particles.

To create an image the ultrasound scanner emits an ultrasound pulse and listen to the reflected echoes. As the human body is mainly composed of water, ultrasounds propagate at a speed close to 1460 $$ m.s^{-1}  $$. When ultrasound waves propagate through tissues, fat or organs, their propagation speed varies from 1450 to 1700 $$ m.s^{-1}  $$.

| Medium | Propagation speed \($$ m.s^{-1} $$\) |
| :--- | :--- |
| Air | 330 |
| Water | 1500 |
| Soft tissues | 1450-1700 |
| Bones | 3000-4000 |

_Table 1 : Propagation speed of ultrasound for different media _[_\[1\]_](http://www.google.com/patents/WO2006077338A1?cl=en)_._

Due to the differences of the mechanical properties \(Lamé coefficients and density\) of each organ and tissue, the acoustic waves are partially reflected at each interface between two different media.

| Medium | Acoustic impedance \($$ kg.m^{-2}.s^{-1}\times 10^{-6} $$\) |
| :--- | :--- |
| Air | 0,0004 |
| Lung | 0,26 |
| Bones | 3,8-7,4 |
| Soft tissues | 1,3-1,7 |
| Water | 1,5 |

_Table 2 : Acoustic impedances for different parts of the human body _[_\[2\]_](http://www.google.com/patents/WO2006077338A1?cl=en)_._

These numbers show that there can be large impedance differences in the body such as between soft tissues and air or between soft tissues and hard tissues \(bones, stones, foreign bodies\). These interfaces are highly reflective or echogenic \(generator of echoes\). Behind these interfaces, a shadow area appears on the ultrasound images as the signal has been almost totally reflected.

## Architecture of the whole system

The ultrasound scanner is composed of :

* A transducer to emit and receive ultrasonic waves
* An analog and digital system to convert the received signal into an image
* A control console to modify various settings
* A power supply and a data management system

![analyse fonctionnelle](/images/functional_analysis.jpg)

To conduct an ultrasound exam, the physician applies a gel on the skin called coupling gel. It helps to improve ultrasound transmission between the probe and the body.

## History of real time ultrasound

The first real-time 2D scanner \(or B-scanner\) was developed by Walter Krause and Richard Soldner. It was marketed as Vidoson® by Siemens Medical Systems Germany in 1965. Vidoson® built the ultrasound image using three rotating transducers facing a parabolic mirror \(allowing to scan the medium along parallel lines\). The transducers and the mirror are coupled using water, enabling a good impedance matching with the body. Images are made of 120 lines and the sampling rate is of 15 frames per second.

XPROBLEME

James Griffith and Walter Henry produced a mechanical oscillating real-time ultrasound scanner in 1973. The probe produce an image of 30 degree sectoral with good quality. The design of that probe was described as one of the key milestones in the development of echocardiography. The first commercial ultrasound scanner using a linear array of transducers, the "Multiscan system", was produced in 1972 by Nicolaas Bom in collaboration with Paul Hugenholtz and a Dutch company \(Organon Teknika\). This device was mainly aimed at cardiac investigation.  
In the mid-80s, curvilinear or convex abdominal transducer arrays appeared on the market. This allowed for a better fit on the abdomen and a wider field of view. The curvilinear probes completely replaced linear array by the end of the 1980s. The improvement of resolution and global quality of the image mainly focused on increasing the number of transducers \(from 64 to 128\). Some work was also conducted on transducer technology \(wide band and large dynamic range\), the aperture of the arrays \(more transducer emit at the same time\), increased processing speed, focusing algorithms for reception \(increase the number of focus points along the measuring line\), integration of the TGC \(real-time gain control\)[\[3\]](http://www.google.com/patents/WO2006077338A1?cl=en).

In the 1990s the main progress have been in the following [\[4\]](http://www.google.com/patents/WO2006077338A1?cl=en):

* Signal processing has become completely analog on the full chain: \[transducer\] -&gt; \[beamformer\] -&gt; \[signal processing\] -&gt; \[image converter\] -&gt; \[screen\]
* The use of broadband transducers with a large aperture. The number channels in high-end systems reaches 256 and more recently 1024 \(for 2D arrays\).
* The phase of the echoes is considered in addition to the amplitude by using coherent reconstruction of images. This technique doubles the available information leading to high resolution images. The frame rate is increased too.  
* The advent of imaging techniques using harmonics \(multiples of the working frequency\), a nonlinear phenomenon caused by the propagation in tissues.  

![différentes dimensions](/images/diffecho.jpg)  
Figure 5: example of 2D and 3D ultrasound imaging

Technological advances have had a significant impact on the evolution of ultrasound, thanks to improvement in image processing and probes [\[5\]](http://www.ncbi.nlm.nih.gov/pubmed/9602842),[\[6\]](http://www.brl.uiuc.edu/Publications/1998/OBrien-JJAP-2781-1998.pdf). This is especially true for probe technology which has evolved from single element systems \(mechanical sectorial probe\) to linear array and finally real-time 3D systems.

More recently, probes compatible with smartphone have appeared \(2009\) [\[7\]](http://uix.sagepub.com/content/30/1/21.short),[\[8\]](https://www.technologyreview.com/s/413222/ultrasound-to-go/). They can only be used with a Windows OS \(Microsoft, Redmond, Washington\). The main technological challenges to be overcome were the energy consumption of the battery and the speed of data transfer. Besides some new algorithms were required to display the image on a smartphone screen. A device has been approved by the Food and Drug Administration \(FDA\) in 2011 after clearing strict guidelines for medical applications [\[9\]](http://mobihealthnews.com/10165/fda-approves-mobisantes-smartphone-ultrasound/),[\[10\]](http://www.engineeringforchange.org/ultrasound-is-now-on-smart-phones-engineering-for-change/). Nowadays, a diversity of specific probes has been developed functioning on frequencies from 2 to 18 MHz.

## Medical use of ultrasound

Ultrasound allows the study of many organs in the abdomen, the pelvis, the neck \(thyroid, liver, spleen, pancreas, kidney, bladder\) as well as blood vessels, ligaments and the heart. It enables a more precise look at abnormalities \(such as tumours, cysts and malformations\) and to guide for taking samples \(puncture\).

Therapeutics :

* Litothripsy \(disintegration of kidney stones\)
* Heat treatment \(ligaments, tendons...\)
* High intensity focused ultrasound \(surgery, eg. in the deep brain\)  

Diagnosis :

* Ultrasound \(frame rate more than 30 images per second\)
* Doppler imaging \(measure the blood flow velocity\), bone densitometry technique \(200 kHz to 800 kHz\)

## Safety

### Introduction

Among various modalities of medical imaging, ultrasound is characterized by the non-ionizing nature of the acoustic waves (unlike X-ray or isotopic imaging).
The absence of ionising radiations, potentially harmful for patients and staffs, conducts to less legal regulation of ultrasound devices use. Moreover the imaging properties of ultrasound imaging and the different safety context leads to promote this modality in various medical situations. (In France, imaging modality recommendations are summarized [here](http://gbu.radiologie.fr/).)

While percepted as one of the safest medical imaging modalities, the effects of transfered energy to the medium and the safety limits of ultrasounds uses are legitimate questions.

### Physical and biological effects of ultrasounds exposure

### Metrics
