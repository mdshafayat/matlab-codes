clear all;
close all;

tilt=0:0.5:80;
delv=3;

gstar=3.2; %gstar*mstar/gbmb
menhanced=1.2; %mstar/mb

h=6.626e-34;
hbar=h/2/pi;
n=3e15;
e=1.6e-19;
Bperp=6.2
B=Bperp./cos(tilt*pi/180);
% Bparallel=B.*sin(tilt*pi/180);
Bparallel=tilt
me=9.1e-31;
mzstar=0.19;
mzbymx=0.45;
mxstar=0.19/mzbymx;
gb=2;

Ez0down=((0+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/mzstar/me*B)/e/1e-3;
Ez0up=((0+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/mzstar/me*B)/e/1e-3;
Ez1down=((1+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/mzstar/me*B)/e/1e-3;
Ez1up=((1+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/mzstar/me*B)/e/1e-3;
Ez2down=((2+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/mzstar/me*B)/e/1e-3;
Ez2up=((2+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/mzstar/me*B)/e/1e-3;

Ex0down=delv+((0+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstar*gb*0.45/menhanced*e*hbar/2/mxstar/me*B)/e/1e-3;
Ex0up=delv+((0+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstar*gb*0.45/menhanced*e*hbar/2/mxstar/me*B)/e/1e-3;
Ex1down=delv+((1+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstar*gb*0.45/menhanced*e*hbar/2/mxstar/me*B)/e/1e-3;
Ex1up=delv+((1+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstar*gb*0.45/menhanced*e*hbar/2/mxstar/me*B)/e/1e-3;

plot(Bparallel,Ez0down,'r-')
hold on
plot(Bparallel,Ez0up,'r')
plot(Bparallel,Ez1down,'b')
plot(B,Ez1up,'b')

plot(Bparallel,Ez2down,'k')
plot(B,Ez2up,'k')

plot(Bparallel,Ex0down,'g')
hold on
plot(Bparallel,Ex1down,'c')
plot(Bparallel,Ex0up,'g')
plot(Bparallel,Ex1up,'c')


Ef0=hbar^2/2/mzstar/me*2*pi*n;
nu=4:-1:1
Bnu=h*n/e./nu
Ef=ones(size(Ez0down));

% for i=1 : length(Bnu);
% x1=Bnu(i)/cos(tilt*pi/180); %[1:1:5];
% y1=[-40 50];   % length of lines, y axis 
% %
% hold on
% plot([x1 x1],y1,'r--')
% end
