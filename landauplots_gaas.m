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


tilt=30;
delv=5.1785;




h=6.626e-34;
hbar=h/2/pi;
n=2.7e15;
e=1.6e-19;
B=0:0.005:16;
Bperp=B*cos(tilt*pi/180);
me=9.1e-31;
menhanced=1; %mstar/mb
mb=0.067;
mstar=menhanced*mb;
gb=-0.45;
g=gb;
gstar=g/gb*menhanced; %gstar*mstar/gbmb

Es0down=((0+0.5)*hbar*e*Bperp/mstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es0up=((0+0.5)*hbar*e*Bperp/mstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es1down=((1+0.5)*hbar*e*Bperp/mstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es1up=((1+0.5)*hbar*e*Bperp/mstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es2down=((2+0.5)*hbar*e*Bperp/mstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es2up=((2+0.5)*hbar*e*Bperp/mstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es3down=((3+0.5)*hbar*e*Bperp/mstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es3up=((3+0.5)*hbar*e*Bperp/mstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es4down=((4+0.5)*hbar*e*Bperp/mstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es4up=((4+0.5)*hbar*e*Bperp/mstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es5down=((5+0.5)*hbar*e*Bperp/mstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Es5up=((5+0.5)*hbar*e*Bperp/mstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;

Eas0down=delv+((0+0.5)*hbar*e*Bperp/mstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Eas0up=delv+((0+0.5)*hbar*e*Bperp/mstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Eas1down=delv+((1+0.5)*hbar*e*Bperp/mstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Eas1up=delv+((1+0.5)*hbar*e*Bperp/mstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Eas2down=delv+((2+0.5)*hbar*e*Bperp/mstar/me-1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;
Eas2up=delv+((2+0.5)*hbar*e*Bperp/mstar/me+1/2*gstar*gb/menhanced*e*hbar/2/me*B)/e/1e-3;

E=[Es0down; Es0up; Es1down; Es1up; Es2down; Es2up; Es3down; Es3up; Es4down; Es4up; Es5down; Es5up; Eas0down; Eas0up; Eas1down; Eas1up; Eas2down; Eas2up];

plot(B,Es0down,'r--')
hold on
plot(B,Es0up,'r')
plot(B,Es1down,'r--')
plot(B,Es1up,'r')

plot(B,Es2down,'r--')
plot(B,Es2up,'r')

plot(B,Es3down,'r--')
plot(B,Es3up,'r')

plot(B,Es4down,'r--')
plot(B,Es4up,'r')

plot(B,Es5down,'r--')
plot(B,Es5up,'r')

plot(B,Eas0down,'b--')
hold on
plot(B,Eas1down,'b--')
plot(B,Eas0up,'b')
plot(B,Eas1up,'b')
plot(B,Eas2down,'b--')
plot(B,Eas2up,'b')

Ef0=hbar^2/2/mstar/me*2*pi*n/e/1e-3
nu=1:1:17;
Bnu=h*n/e./nu;
Ef=Ef0*ones(size(Es0down));

for i=1 : length(Bnu);
x1=Bnu(i)/cos(tilt*pi/180); %[1:1:5];
y1=[-40 50];   % length of lines, y axis 
%
hold on
plot([x1 x1],y1,'r--')
end
Bnu=Bnu/cos(tilt*pi/180);
for i=length(B):-1:2
    A=unique(E(:,i));
    for j=1:1:length(Bnu)
        if B(i)>Bnu(j)
            Ef(i)=A(j);
            break;
        end
    end
end

plot(B,Ef,'-ks','LineWidth',1.5,...
                       'MarkerEdgeColor','k',...
                       'MarkerFaceColor','k',...
                       'MarkerSize',2)
