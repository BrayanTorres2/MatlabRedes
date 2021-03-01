clc
clear all
close all

%--- datos ---
bitstream = '00110100010';
tb = 50;
regla_bit = 0;
%carrier
Ac = 10;
fc = 1000e3;
phic = 0;
%Regla de modulacion ASK
transmite_carrier = 1; %VALORES posibles con 1 ó 0 
%--- procesos ---
num_bits = length(bitstream);
tc = linspace(0,num_bits*2/fc,num_bits*tb+1);
carrier = Ac*sin(2*pi*fc*tc + phic);
ceros = zeros(1,tb);
unos = ones(1,tb);
cadena = 0;
cadena_inversa = 0;
for n=1:length(bitstream)
   if (bitstream(n)=='1')
       cadena = [cadena unos];
       cadena_inversa = [cadena_inversa ceros];
   else
       cadena = [cadena ceros];
       cadena_inversa = [cadena_inversa unos];
   end 
end
if(regla_bit == 1) 
    new_bitstream = 5*cadena;
else
    new_bitstream = 5*cadena_inversa;
end 
titulo = cat(2,'Cadena de bits; ', bitstream);

%Modulacion ASK
if(regla_bit ==1)&&(transmite_carrier ==1)
    ASK= 5*cadena.*carrier; 
end
if(regla_bit ==1)&&(transmite_carrier ==0)
    ASK= 5*cadena_inversa.*carrier; 
end
if(regla_bit ==0)&&(transmite_carrier ==1)
    ASK= 5*cadena.*carrier; 
end
if(regla_bit ==0)&&(transmite_carrier ==0)
    ASK= 5*cadena_inversa.*carrier; 
end
%Modulacion FSk
tc1 = linspace(0,num_bits/fc,num_bits*tb+1);
tc2 = linspace(0,num_bits*4/fc,num_bits*tb+1);
delt_freq = 1000;
FSK_lf=Ac*sin(2*pi*(fc-delt_freq)*tc1+phic);
FSK_hf=Ac*sin(2*pi*(fc+delt_freq)*tc2+phic);
FSK_alto = 5*cadena.*FSK_hf;
FSK_bajo = 5*cadena_inversa.*FSK_lf;
FSK = FSK_alto+FSK_bajo;
%Modulacion PSK
PSK_fase_0 = 5*cadena.*carrier;
PSK_fase_180 = -5*cadena_inversa.*carrier;

PSK = PSK_fase_0+PSK_fase_180;
%--- resultados ---
figure(1)
%stem(cadena)
subplot(4,1,1),plot(new_bitstream), title (titulo)
axis([0 length(bitstream)*tb -1 6])
grid on 
subplot(4,1,2),plot(tc,carrier), title ('Carrier/Portadora')
subplot(4,1,3),plot(tc,ASK), title ('Señal ASK')
subplot(4,1,4),plot(tc,PSK), title ('Señal PSK')
subplot(5,1,5),plot(tc,FSK), title ('Señal FSK')

