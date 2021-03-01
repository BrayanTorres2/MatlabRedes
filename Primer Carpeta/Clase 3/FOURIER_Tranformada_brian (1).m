clc
clear all
close all

%-----DATOS-----
A=5;
f=300;
cp=1;

%-----PROCESOS-----
t=linspace(0,cp/f,500)
xt_1CF = A*sin(2*pi*f*t);
xt_2CF = xt_1CF + (A/3)*sin(2*pi*3*f*t);
xt_3CF = xt_2CF + (A/5)*sin(2*pi*5*f*t);
xt_4CF = xt_3CF + (A/7)*sin(2*pi*7*f*t);
xt_5CF = xt_4CF + (A/9)*sin(2*pi*9*f*t);
xt_6CF = xt_5CF + (A/11)*sin(2*pi*11*f*t);
%TRANSFORMADA DE FOURIER
tf_lcf=(abs(fft(xt_1CF)));
tf_lcf1=(abs(fft(xt_2CF)));
tf_lcf2=(abs(fft(xt_3CF)));
tf_lcf3=(abs(fft(xt_4CF)));
tf_lcf4=(abs(fft(xt_5CF)));
tf_lcf5=(abs(fft(xt_6CF)));
%-----RESULTADOS-----

figure(1)
subplot(3,2,1)
plot(t,xt_1CF),title('señal cuadrada: 1CF'), grid on
subplot(3,2,2)
plot(t,xt_2CF),title('señal cuadrada: 2CF'), grid on
subplot(3,2,3)
plot(t,xt_3CF),title('señal cuadrada: 3CF'), grid on
subplot(3,2,4)
plot(t,xt_4CF),title('señal cuadrada: 4CF'), grid on
subplot(3,2,5)
plot(t,xt_5CF),title('señal cuadrada: 5CF'), grid on
subplot(3,2,6)
plot(t,xt_6CF),title('señal cuadrada: 6CF'), grid on

figure(2)
subplot(3,2,1)
plot(t(1:50),tf_lcf(1:50)),title('Trandorfada fourier: 1CF'), grid on
subplot(3,2,2)
plot(t(1:50),tf_lcf1(1:50)),title('Trandorfada fourier: 2CF'), grid on
subplot(3,2,3)
plot(t(1:50),tf_lcf2(1:50)),title('Trandorfada fourier: 3CF'), grid on
subplot(3,2,4)
plot(t(1:50),tf_lcf3(1:50)),title('Trandorfada fourier: 4CF'), grid on
subplot(3,2,5)
plot(t(1:50),tf_lcf4(1:50)),title('Trandorfada fourier: 5CF'), grid on
subplot(3,2,6)
plot(t(1:50),tf_lcf5(1:50)),title('Trandorfada fourier: 6CF'), grid on