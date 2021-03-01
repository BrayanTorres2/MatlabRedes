clc 
clear all
close all
%datos del carrier
Ac=10;
fc=1000e3;%fc =1000KHz
cpc=18;
%Datos Binarios
datos_bin='00110100010';
%Proceso
tc=linspace(0,cpc/fc,500);
carrier=Ac*sin(2*pi*fc*tc);
%construcion de datos binarios
long_datos=length(datos_bin);
tb=50;%cuantos puntos tiene ese bit
uno=ones(1,tb);
cero=zero(1,tb);
bits=[];
for n=1:long_datos
    if(datos_bin(n)=='1')
        bits=[bits uno];
    else
          bits=[bits cero];
    end
end
bits=5*bits;
%
%Salida
figure(1)
subplot(2,1,1),plot(tc,carrier),title('Carrier'),grid on
subplot(2,1,2),plot(bits),title('Datos Digitales:BITS'),grid on