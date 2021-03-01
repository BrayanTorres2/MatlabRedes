clc 
clear all
close all
% datos de entrada
%datos del carrier
Ac=10;
fc=1000e3;%fc =1000KHz
cpc=18;
%datos analogos xt
Ax=2;
fx=3400;
cpx=2;
%datos de am
m=0.4
%indice de modulacion FM 
Nfm=2;
%indice de modulacion PM 
Npm=2;
%Proceso
tc=linspace(0,cpc/fc,500);
carrier=Ac*sin(2*pi*fc*tc);
%Construccion Carrier
tx=linspace(0,cpx/fx,500);
xt=Ax*sin(2*pi*fx*tx);
%modulacion AM
Xam=(1+m*xt).*carrier;
%modulacion FM
Xfm=Ac*sin(2*pi*fc*tc+Nfm*xt)
%moduacion PM
xt_diff=Ax*cos(2*pi*fx*tx);
Xpm=Ac*sin(2*pi*fc*tc+Npm*xt_diff)
%Salida
figure(1)
subplot(5,1,1),plot(tc,carrier),title('Carrier'),grid on
subplot(5,1,2),plot(tx,xt),title('Datos Analogos'),grid on
subplot(5,1,3),plot(tc,Xam),title('Modulacion AM '),grid on
subplot(5,1,4),plot(tc,Xfm),title('Modulacion Fm'),grid on
subplot(5,1,5),plot(tc,Xpm),title('Modulacion PM'),grid on