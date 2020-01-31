clear all;
close all;
%plot parameters
width = 6;     % Width in inches
height = 3;    % Height in inches
alw = 1;    % AxesLineWidth
fsz = 14;      % Fontsize
lw = 1;      % LineWidth
msz = 8;       % MarkerSize

% The properties we've been using in the figures
set(0,'defaultLineLineWidth',lw);   % set the default line width to lw
set(0,'defaultLineMarkerSize',msz); % set the default line marker size to msz
set(0,'defaultLineLineWidth',lw);   % set the default line width to lw
set(0,'defaultLineMarkerSize',msz); % set the default line marker size to msz


tilt=0;
delv=5;

gstar=3.15; %gstar*mstar/gbmb
menhanced=1; %mstar/mb
menhancedX=1; %mstar/mb
gstarX=3.15; %gstar*mstar/gbmb

h=6.626e-34;
hbar=h/2/pi;
n=3e15;
e=1.6e-19;
B=0:0.001:35;
Bperp=B*cos(tilt*pi/180);
me=9.1e-31;
mzb=0.45;
mzstar=menhanced*mzb;
mzbymx=0.45;
mxb=mzb/mzbymx;
mxstar=menhancedX*mxb;
gb=2;

Btarget= 1;

Ez0down_1= ((0+0.5)*hbar*e*Btarget/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*Btarget)/e/1e-3
Ez1down_1= ((1+0.5)*hbar*e*Btarget/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*Btarget)/e/1e-3
Ez0up_1= ((0+0.5)*hbar*e*Btarget/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*Btarget)/e/1e-3
Ez1up_1= ((1+0.5)*hbar*e*Btarget/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*Btarget)/e/1e-3

Ez0up_1-Ez0down_1
Ez0up_1+Ez0down_1

Ez0down=((0+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez0up=((0+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez1down=((1+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez1up=((1+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez2down=((2+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez2up=((2+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez3down=((3+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez3up=((3+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez4down=((4+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez4up=((4+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez5down=((5+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez5up=((5+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez6down=((6+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez6up=((6+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez7down=((7+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez7up=((7+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez8down=((8+0.5)*hbar*e*Bperp/mzstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Ez8up=((8+0.5)*hbar*e*Bperp/mzstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;

Ex0down=delv+((0+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex0up=delv+((0+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex1down=delv+((1+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex1up=delv+((1+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex2down=delv+((2+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex2up=delv+((2+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex3down=delv+((3+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex3up=delv+((3+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex4down=delv+((4+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex4up=delv+((4+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex5down=delv+((5+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex5up=delv+((5+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex6down=delv+((6+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex6up=delv+((6+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex7down=delv+((7+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex7up=delv+((7+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex8down=delv+((8+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex8up=delv+((8+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex9down=delv+((9+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex9up=delv+((9+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex10down=delv+((10+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex10up=delv+((10+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex11down=delv+((11+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex11up=delv+((11+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex12down=delv+((12+0.5)*hbar*e*Bperp/mxstar/me-1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;
Ex12up=delv+((12+0.5)*hbar*e*Bperp/mxstar/me+1/2*gstarX*gb/menhancedX*e*hbar/2/me*B)/e/1e-3;

E=[Ez0down; Ez0up; Ez1down; Ez1up; Ez2down; Ez2up; Ez3down; Ez3up; Ez4down; Ez4up; Ez5down; Ez5up; Ez6down; Ez6up;  Ez7down; Ez7up; Ez8down; Ez8up; Ex0down; Ex0up; Ex1down; Ex1up; Ex2down; Ex2up; Ex3down; Ex3up; Ex4down; Ex4up; Ex5down; Ex5up; Ex6down; Ex6up; Ex7down; Ex7up; Ex8down; Ex8up; Ex9down; Ex9up; Ex10down; Ex10up; Ex11down; Ex11up; Ex12down; Ex12up];

plot(B,Ez0down,'r--')
hold on
plot(B,Ez0up,'r-')
plot(B,Ez1down,'r--')
plot(B,Ez1up,'r-')

plot(B,Ez2down,'r--')
plot(B,Ez2up,'r-')

plot(B,Ez3down,'r--')
plot(B,Ez3up,'r-')

plot(B,Ez4down,'r--')
plot(B,Ez4up,'r-')

plot(B,Ez5down,'r--')
plot(B,Ez5up,'r-')

plot(B,Ez6down,'r--')
plot(B,Ez6up,'r-')

plot(B,Ez7down,'r--')
plot(B,Ez7up,'r-')
plot(B,Ez8down,'r--')
plot(B,Ez8up,'r-')


plot(B,Ex0down,'b--')
hold on
plot(B,Ex1down,'b--')
plot(B,Ex0up,'b-')
plot(B,Ex1up,'b-')

plot(B,Ex2up,'b-')
plot(B,Ex2down,'b--')
plot(B,Ex3down,'b--')
plot(B,Ex3up,'b-')

plot(B,Ex4down,'b--')
plot(B,Ex4up,'b-')

plot(B,Ex5down,'b--')
plot(B,Ex5up,'b-')

plot(B,Ex6down,'b--')
plot(B,Ex6up,'b-')

plot(B,Ex7down,'b--')
plot(B,Ex7up,'b-')
plot(B,Ex8down,'b--')
plot(B,Ex8up,'b-')
plot(B,Ex9down,'b--')
plot(B,Ex9up,'b-')
plot(B,Ex10down,'b--')
plot(B,Ex10up,'b-')
plot(B,Ex11down,'b--')
plot(B,Ex11up,'b-')
plot(B,Ex12down,'b--')
plot(B,Ex12up,'b-')

Ef0=hbar^2/2/mzstar/me*2*pi*n/e/1e-3;
nu=1:1:26;
Bnu=h*n/e./nu;
Ef=Ef0*ones(size(Ez0down));

for i=1 : length(Bnu);
x1=Bnu(i)/cos(tilt*pi/180); %[1:1:5];
y1=[-40 50];   % length of lines, y axis 
%
hold on
plot([x1 x1],y1,'g--')
end
Bnu=Bnu/cos(tilt*pi/180);
for i=length(B):-1:1
    A=unique(E(:,i));
    for j=1:1:length(Bnu)
        if B(i)>Bnu(j)
            Ef(i)=A(j);
            break;
        end
    end
end
Ef(1)=Ef0;
plot(B,Ef,'-ks','LineWidth',1.5,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','k',...
                       'MarkerSize',2)
