clc;
clear all;
close all;
a=190e-9;
h=6.63e-34;
hbar=h/2/pi;
% n=1.452e15;

Bhalf=2.7411;
n=1/2*Bhalf*2.414*1e14
e=1.6e-19/1;
i=1;
% Rc= [1 1.74 2.74].*a/2
Rc=(i+1/4).*a/2;
Kf=sqrt(4*pi*n)
Bstar=hbar*Kf./Rc/e;
gg=e*a*(1+1/4)/2/hbar;
gg1=e/2/h;

Bi = 0.0323*7;
Kf = Bi*e*a*(1+1/4)/2/hbar;

COposCF=Bstar+Bhalf;
COposCF-Bhalf

COposCF=Bstar*sqrt(COposCF/Bhalf)+Bhalf;
COposCF=Bstar*sqrt(COposCF/Bhalf)+Bhalf;
COposCF=Bstar*sqrt(COposCF/Bhalf)+Bhalf;
COposCF=1/2*(Bstar+1/2*Bstar.*Bstar/Bhalf)+Bhalf;

COposCF=-Bstar+Bhalf;
COposCF=-Bstar*sqrt(COposCF/Bhalf)+Bhalf;
COposCF=-Bstar*sqrt(COposCF/Bhalf)+Bhalf;
COposCF=-Bstar*sqrt(COposCF/Bhalf)+Bhalf;
COposCF=(-Bstar+Bstar.*Bstar/Bhalf)+Bhalf;
COposCF-Bhalf