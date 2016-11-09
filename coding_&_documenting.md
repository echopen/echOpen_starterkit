# Coding & Documenting

To find the sources, you should flashlight yourself to our GitHub [repos](https://github.com/echopen) ! 

There are plenty of repos, dedicated to the Software, Hardware and documentation

* Remarks
  * The names of the repos might change in the following month, since we have just finished to define the naming convention and more roughly the documentation format. 
  * Some repos have their documentation counter-part, so that you'll find precisely the present GitBook's repo;)

Here are the main repos you should be aware of 


## Software repos

* [android-app](https://github.com/echopen/android-app) : the repo dedicated to the Android App. For now on, the backend is quite stabilized. The UI is still on building

* [kit-soft](https://github.com/echopen/kit-soft) : dedicated to 
  * Image Processing
- [ImageProcessing](https://github.com/echopen/kit-soft/tree/master/ImageProcessing) -> this is a algos submission web server. It supports uploading of image denoising algorithms. These are analysed, and about 10 metrics are processed processor related metrics and ultrasound-oriented denoising quality metrics. This website will host a challenge platform to crowdsource denoisiing algorithms. This will be put on online production in the following weeks (this is written 08.11.16)

- [EchoImageProcessing](https://github.com/echopen/kit-soft/tree/master/EchoImageProcessing) is deprecated

  * Redpitaya stuffs
- [RedPitaya](https://github.com/echopen/kit-soft/tree/master/RedPitaya) and [RedPitayaSDK](https://github.com/echopen/kit-soft/tree/master/RedPitayaSDK) are dedicated to our micro-controller codes.
- [SignalProcessingEmulator](https://github.com/echopen/kit-soft/tree/master/SignalProcessingEmulator) helps emulate the transducer data into the RedPitaya

  * web tools
[signal processing web server](SignalProcessingWebServer) -> this folder hosts the web server that enables getting the data from our ultrasound machine dived into our aquarium. This will be put on online production in the following weeks (this is written 08.11.16)

[echopen-leaderboard](https://github.com/echopen/kit-soft/tree/master/echopen-leaderboard) -> this is a website, technically a Django App, that enables 
1. upload of image denoising algorithms. 
These will be processed against our benchmark images, from which our backend throws  
  - ultrasound quality metrcis
  - CPU and memory metrics
2. update of a leaderboard based on the aggregation of the latter metrics
 

you'll find also in the kit-soft repos other folder taht will be deprecated and cleaned soon

* [echopen.github.io](https://github.com/echopen/echopen.github.io) : this is an example of static site that is automatically generated for our events. Other static sites are to come, they will automatically generate documentation from the repos.

## Hardware repos

* [electronic](https://github.com/echopen/electronic) : is dedicated to echOpen's electronic (gerber files and such) and mecanics (3D plans & such) and its control

## Miscellaneous

### documentation

* android-app-doc : is the GitHub repo synchronized with Android App GitBook documentation

* [starter-kit](https://github.com/echopen/starterkit) : is the GitHub repo synchronized with StarterKit GitBook. 

### information

* [medicotechnical](https://github.com/echopen/medicotechnical) : is womewhat hard to dive in. It is the basis of our documentation format normalisation process

* [twitter](https://github.com/echopen/twitter) : is the twitter graph of echOpen's community (randomly maintained)

* [articles](https://github.com/echopen/articles) : is a bunch of State of the Art documents on ultrasound technologies
 