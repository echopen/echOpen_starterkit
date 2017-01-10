clear all;
close all;

x=linspace(0,0.005,1024);
f=5*10^6;
om=2*pi*f;
c=1500;
sig=cos(om/c*x);

alpha=1000;
att=exp(-alpha*x);
sig1=sig.*att;

figure(1)
subplot(1,2,1)
plot(1000*x,sig);
xlabel('x (mm)');
subplot(1,2,2)
plot(1000*x,sig1);
xlabel('x (mm)');

print attenuative_medium.fig;

temp=1;
while att(temp)>0.2
  temp=temp+1;
endwhile
temp
att(temp:end)=att(temp:end)*5;
while att(temp)>0.2
  temp=temp+1;
endwhile
att(temp:end)=att(temp:end)*5;
temp
while att(temp)>0.2
  temp=temp+1;
endwhile
att(temp:end)=att(temp:end)*5;
temp


sig2=sig.*att;

figure(2)
plot(1000*x,sig2);
xlabel('x (mm)');

print tgc_example.fig