function [xi,yi,p]=monopol(l,Nx,L,Ny,x0,y0,t)
%toto

c=1500;
d0=c*t;
f=5*10^6;
lambda=c/f;
k=2*pi/lambda;

xi=linspace(-l/2,l/2,Nx);
yi=linspace(0,L,Ny);

r=zeros(Nx,Ny);

for tempx=1:Nx
  for tempy=1:Ny
    r(tempx,tempy)=sqrt((xi(tempx)-x0).^2+(yi(tempy)-y0).^2);
  endfor
endfor

%figure(23)
%surf(r)
%shading interp;
%view([0 90]);

fx=cos(1*k*r);%./sqrt(r);
ft=1;%exp(-((r-c*t)/2/lambda).^2);

p=real(fx.*ft);
