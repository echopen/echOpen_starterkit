# Acoustic imaging (basics) 

The pdf version of this document can be download ['here'](./acoustic_imaging_src/acoustic.pdf).

In this section, we will explain some basis of the acoustic theory to understand the propagation of acoustic waves and the echographic process.

Propagation of acoustic waves
=============================

In this section, we will define the different types of acoustic waves and some basic equations and properties of the propagation of acoustic waves.

Wave types
----------

An acoustic wave is a perturbation of the local state without displacement of the global state. Acoustic waves are periodic, their spatial periodicity is given by the wavelength *λ*. Consider a medium at rest such as on Fig. 1, where the particles are represented by the dots. Such a periodic structure represent a metal for example. When an acoustic wave propagate in this medium, the particles will have a local displacement.

 ![Medium at rest.<span data-label="fig:at_rest"></span>]

 *Figure 1: medium at rest.*

There is two types of acoustic waves, the longitudinal waves (Fig. 2) also named P waves and the transverse waves (Fig. 3) also named SH or SV waves. The longitudinal waves are compressional waves, the direction of the displacement of the particles is the same than the direction of propagation of the wave. The transverse waves are shear waves, the direction of displacement is then perpendicular to the direction of propagation of the wave. In a fluid, such as the water, only longitudinal waves can propagate. In the human body, the shear modulus is very small, it can be considered as a fluid, and so only longitudinal waves will be generated.

 ![Longitudinal wave.<span data-label="fig:Pwave"></span>]
 *Figure 2: longitudinal wave.*

  [Medium at rest.<span data-label="fig:at_rest"></span>]: ./acoustic_imaging_src/image/at_rest.png "fig:"
  [Longitudinal wave.<span data-label="fig:Pwave"></span>]: ./acoustic_imaging_src/image/Pwave.png "fig:"

 ![Shear wave.<span data-label="fig:Swave"></span>]

 *Figure 3: shear wave.*

In the rest of the document, we will only consider longitudinal waves.

  [Shear wave.<span data-label="fig:Swave"></span>]: image/Swave.png "fig:"

Mathematical formulation
------------------------
In acoustic, a fluid medium is describe by two mecanical parameters: the mass density *ρ* and the bulk modulus *κ*. The bulk modulus relate the change of volume of a medium to the isostatic pressure apply on it. The velocity of the acoustic wave *c* is:
$$c=\\sqrt{\\dfrac{\\kappa}{\\rho}},
 \\label{eq:speed of sound}$$
 for example, for the water we have: *ρ* = 1000 kg.m<sup>−3</sup>, *κ* = 2.19 MPa and *c* = 1480 m.s<sup>−1</sup>.

The mathematical formulation is obtained by solving the Helmholtz equation, for exemple, the acoustic pressure *p*(*x*,*t*) can be expressed as:
$$p\\left(x,t\\right)=\\left(A^{+}\\e^{\\im kx}+A^{-}\\e^{-\\im kx}\\right)\\e^{-\\im 
\\omega t},
 \\label{eq:math 1D formulation}$$
 $A^{+}\\e^{\\im kx}$ is a wave of amplitude *A*<sup>+</sup>, propagating toward the positive *x*, $A^{-}\\e^{-\\im kx}$ is a wave of amplitude *A*<sup>−</sup>, propagating toward the negative *x*. $k=\\dfrac{\\omega}{c}$ is the wavenumber, *ω* = 2*π**f* the angular pulsation and *f* the frequency.

When we make an echographic image, we are intresting only on the intensity of the wave:
$$I=\\dfrac{1}{2}\\Re\\left\[p\\left(x,t\\right)v^{\*}\\left(x,t\\right)\\right\],
 \\label{eq:acoustic intensity}$$
 where *v*(*x*,*t*) is the velocity of the particle, and *x*<sup>\*</sup> represent the complex conjugate of *x*. It can be shown with the Euler’s equation that the intensity is directly proportional to the square modulus of the pressure.

Refraction and diffusion of acoustic waves
------------------------------------------

When an acoustic wave passes from a medium (0) to a second medium (1), a part of the wave is reflected an the over part is transmitted through the interface. When the interface is flat in the point of view of the wave, we have refraction (it is a quasi one dimensional problem, because the wave is reflected on only one direction of the space). When the wave sees the curvature of the interface, the wave is scattered on all the directions of the space, we talk then about diffusion.

### Refraction of a wave

 ![Refraction of a wave.<span data-label="fig:refraction"></span>]

*Figure 4: refracation of a wave.*

We consider an incident wave $\\phi\_{\\inc}$ normal to an interface, the reflected $\\phi\_{R}=R\\phi\_{\\inc}$ and the transmitted $\\phi\_{T}=T\\phi\_{\\inc}$ waves are also normal to the interface (Fig. 4). *R* and *T* represent respectively the reflexion and transmission coefficient. By solving this problem, we show that:
$$R=\\dfrac{Z\_2-Z\_1}{Z\_2+Z\_1},
 \\label{eq:reflection coefficient}$$
 where *Z*<sub>*i*</sub> = *ρ*<sub>*i*</sub>*c*<sub>*i*</sub> is the acoustic impedance of the medium *i*.

  [Refraction of a wave.<span data-label="fig:refraction"></span>]: image/refraction "fig:"

If we consider, for example the reflection of a wave at an interface between water (*ρ*<sub>0</sub> = 1000 kg.m<sup>−3</sup>, *c*<sub>0</sub> = 1480 m.s<sup>−1</sup>) and a muscle (*ρ*<sub>1</sub> = 1070 kg.m<sup>−3</sup>, *c*<sub>1</sub> = 1590 m.s<sup>−1</sup>), the reflection coefficient is equal to 69.10<sup>−3</sup>, so only 7% of the pressure is reflected. If we know consider an interface between water and bone (*ρ*<sub>1</sub> = 2175 kg.m<sup>−3</sup>, *c*<sub>1</sub> = 4000 m.s<sup>−1</sup>), then nearly 70% of the incident wave is reflected. The echos due to bones are much more higher than the ones due to the muscles.

### Scattering of a wave

Even if an object is very small in front of a wave, it always scattered the wave (Fig. 5). It is much more complicated to determine the scattered wave than the reflected wave such as in sec. .

 ![Scattering of a wave.<span data-label="fig:diffusion"></span>]

*Figure 5: scattering of a wave.*

The diffused wave goes in every direction of the space, it lead that its amplitude decreases with the distance from the object.

  [Scattering of a wave.<span data-label="fig:diffusion"></span>]: image/diffusion "fig:"

Attenuative media
-----------------

The human body is an attenuative media, this mean that the amplitude of a wave propagating in such medium decreases along its direction of propagation. Mathematically, the propagation of waves in this kind of medium is written as:
$$p\\left(x,t\\right)=\\left(A^{+}\\e^{\\im kx}\\e^{-\\alpha x}+A^{-}\\e^{-\\im 
kx}\\e^{\\alpha x}\\right)\\e^{-\\im 
\\omega t}.
 \\label{eq:math 1D absobing formulation}$$
 The difference between the propagation of a wave between a non-attenuative and an attenuative medium is present on Fig. . So when we do acoustic imaging in the human body, we must gradually amplify the received signal if we want to convert correctly the analogical signal into a digital signal, because if the amplitude of the signal is smaller than the precision of the ADC, we can’t measure it (see appendix ). Classically, we do Time Gain Compensation (TGC) on the receive signal in order to keep a convenient amplitude of the received signal. An example of this kind of treatment is presented on Fig. , it’s apply to the attenuated signal on the right side of Fig. .

 ![Acoustic pressure of a wave propagating in a non-attenuative (left) and attenuative (right) medium.<span data-label="fig:attenuative medium"></span>]

*Figure 6: acoustic pressure of a wave propagating in a non-attenuative (left) and attenuative (right) medium.*

 ![Example of TGC applied on the attenuated signal (right side of Fig. .<span data-label="fig:tgc example"></span>]

* Figure 7: Example of TGC applied on the attenuated signal (right side of Fig. 6.*

  [Acoustic pressure of a wave propagating in a non-attenuative (left) and attenuative (right) medium.<span data-label="fig:attenuative medium"></span>]: image/attenuative_medium "fig:"
  [Example of TGC applied on the attenuated signal (right side of Fig. .<span data-label="fig:tgc example"></span>]: image/tgc_example "fig:"

Transducer
==========

A transducer is an acoustic sensor, it convert electric power to mechanical power and conversely. So if you apply an electric signal on it, it will generate acoustic wave (like a speaker), and if an acoustic wave deform it, it generate an electrical signal (like a microphone).

In order to have a correct radial precision in acoustic imaging, the acoustic wave must be focused on one point. This can be done by two kind of technologies: focussed transducer and transducers array.

Focussed transducer
-------------------

 ![Acoustic wave focalisation (red) by a focussed transducer.<span data-label="fig:transducer scheme"></span>]

* Figure 8: acoustic wave focalisation (red) by a focussed transducer.

This kind of transducer have a spherical shape, so the emitted acoustic wave naturally focalised at the center of the sphere (Fig. ). The area of the focal spot is an ellipse, the value of *l* and *L* can be approximate by:

  [Acoustic wave focalisation (red) by a focussed transducer.<span data-label="fig:transducer scheme"></span>]: image/transducer_scheme "fig:"


$$l=\\dfrac{\\lambda R}{2r},
 \\label{eq:l value}$$

*L* = 15(1−0.01*θ*)*l*.

More *θ* is high, more the ellipse is small. When we do acoustic imaging, we want *l* to be as small as possible to increase the radial precision. Moreover we want *L* to be high, because the echo of an object outside of this ellipse will be too small to be measured. So we have to make a compromise between *l* and *L*.

At the nearfield (it depend on *λ* and *r*) of the transducer, the acoustic pressure is to chaotic so we can’t do acoustic imaging in the nearfield of this kind of transducer.

Transducers array
-----------------

