clear all;
close all;

d=75/1000; %focal length
arc=5*pi/180; %arc of the transducer
nbo=32; %number of monopol to simulate the transducer

f=5*10^6; %central frequency of the transducer
T=1/f %time wavelengths

Nt=1024; %numer of time points
t0=0;
t=linspace(-4*T,4*T,Nt);
s=cos(2*pi*f*(t-t0)).*exp(-((t-t0)*1/T).^2);

te=t(2)-t(1);
fe=1/te

f=linspace(0,fe*(Nt-1)/Nt,Nt);

figure(1)
plot(t*10^6,s);
xlabel('t (us)');
print time_signal.fig

S=fft(s);

figure(2)
plot(f/10^6,real(S)/max(real(S)),f/10^6,imag(S)/max(imag(S)));
xlabel('f (MHz)');
print positive_frequencies.fig
%xlim([0 15*10^6]);

S2=S;
S2(1:Nt/2-1)=S(Nt/2+2:end);
S2(Nt/2:end)=S(1:Nt/2+1);
f2=linspace(-fe/2*(Nt-1)/Nt,fe/2,Nt);

figure(3)
plot(f2/10^6,real(S2)/max(abs(real(S2))),f2/10^6,imag(S2)/max(abs(imag(S2))));
xlim([-15 15]);
xlabel('f (MHz)');
print negative_frequencies.fig

S3=S;
S3(Nt/2+2:end)=0;
s3=ifft(S3);

t=t*10^6;
figure(4)
plot(t,real(s3),t,imag(s3),t,abs(s3));
xlabel('t ($\mu$s)');
print hilbert_transform.fig