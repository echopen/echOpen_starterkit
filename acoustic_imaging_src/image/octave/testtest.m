clear all;
close all;

p=zeros(64,512);

%[p]=monopol(0.005,256,0.01,512,0.005,0.002,0.000005);

R=0.07;
d=0.002;
N=16*2;
arc=10;
arc=arc*pi/180;

alpha=linspace(-arc/2,arc/2,N);
x=R*sin(alpha);
y=d+R-R*cos(alpha);

for temp=1:N
  [xi,yi,t]=monopol(0.02,64,0.15,512,x(temp),y(temp),0.00005);
  p=p+t;
endfor

figure(1)
imagesc(yi*1000,xi*1000,p);
%axis square;
%shading interp;
%view([0 90]);
ylim([xi(1)*1000 xi(end)*1000]);
xlim([yi(1)*1000 yi(end)*1000]);
xlabel('x (mm)');
ylabel('y (mm)');
print arc30.fig