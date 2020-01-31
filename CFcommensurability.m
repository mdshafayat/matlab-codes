clc;
clear all;
close all;
a=190e-9;
h=6.63e-34;
hbar=h/2/pi;
% n=1.452e15; %2DES density

Bhalf=2.7411; % location of nu=1/2
n=1/2*Bhalf*2.414*1e14
e=1.6e-19/1;
i=1;
% Rc= [1 1.74 2.74].*a/2  %triangular lattice
Rc=(i+1/4).*a/2;
Kf=sqrt(4*pi*n)
Bstar=hbar*Kf./Rc/e;
gg=e*a*(1+1/4)/2/hbar;
gg1=e/2/h;

Bi = 0.0323*7;
Kf = Bi*e*a*(1+1/4)/2/hbar;

COposCF=Bstar+Bhalf; % Geometric resonance minima on nu<1/2 side

COposCF=(-Bstar+Bstar.*Bstar/Bhalf)+Bhalf;  % Geometric resonance minima on nu>1/2 side
