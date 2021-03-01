clc
clear all
close all

%---Datos---
A=5;
f=3000;
cp=2;
comp_freq=1000;
phi=0;

%---Procesos---
t=linspace(0,cp/f,500);
sinusoidal=A*sin(2*pi*f*t+phi);
%senal cuadrada
cuadrada=0;
for n=1:2:(comp_freq*2-1)
    cuadrada = cuadrada + (A/n)*sin(2*pi*n*f*t);
end
%senal  triangular
triangular=0;
for n=1:2:(2*comp_freq-1)
    triangular = triangular + (A/n^2)*cos(2*pi*n*f*t);
end
%Diente de Sierra
dsierra=0;
for n=1:(comp_freq)
    if(mod(n,2)==0)
        signo=-1;
    else
        signo=0;
    end
    dsierra = dsierra + signo*(A/n)*sin(2*pi*n*f*t);
end
%---Resultados---
figure(1)
subplot(3,2,1),plot(t,sinusoidal),title('señal sinosoidal: 1CF'), grid on
subplot(3,2,2),plot(t,cuadrada),title('señal cuadrada: 2CF'), grid on
subplot(3,2,3),plot(t,triangular),title('señal triangular: 3CF'), grid on
subplot(3,2,4),plot(t,dsierra),title('señal dientesSierra: 4CF'), grid on



