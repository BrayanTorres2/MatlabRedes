 clc
clear all
close all

%-- Data IN -----

bit_in = '11100110100';
tb = 50; %tb = time bit
rule_bit_high = 0; % option:  1 v 0
%rule NRZ
A_NRZ = 20; %VOLTS
deltaY = 5; %visualization of axis
%rule NRZ-PU
rule_NRZ_PU_zero = 0; % option:  1 v 0
%rule NRZ-NU
rule_NRZ_NU_zero = 0; % option:  1 v 0
%rule NRZ-POLAR
rule_NRZ_polar_low = 0; % option:  1 v 0

%--Process--
%--
logic_zero = zeros(1,tb);
logic_one = ones(1,tb); 
frame = [];
frame_inverse = [];
framePolar = [];
framePolarInverse = [];

for m=1:length(bit_in)
   if (bit_in(m) == '0')
       frame = [frame logic_zero];
       frame_inverse = [frame_inverse logic_one];
       framePolar = [framePolar (-1)* logic_one];
       framePolarInverse = [framePolarInverse (+1)* logic_one];
   else
       frame = [frame logic_one];
       frame_inverse = [frame_inverse logic_zero];
       framePolar = [framePolar (+1)* logic_one];
       framePolarInverse = [framePolarInverse (-1)* logic_one];
   end    
end

if (rule_bit_high == 1)
    bitstream = 5*frame;
else
    bitstream = 5*frame_inverse;
end

%Coding: NRZ-PU
if(rule_NRZ_PU_zero == 0)
    NRZ_PU = A_NRZ * frame;
else
    NRZ_PU = A_NRZ * frame_inverse;
end
%Coding: NRZ-NU
if(rule_NRZ_PU_zero == 0)
    NRZ_NU = (-1)*(A_NRZ * frame);
else
    NRZ_NU = (-1)*(A_NRZ * frame_inverse);
end

%Coding: NRZ-POLAR
if(rule_NRZ_polar_low == 0)
    NRZ_POLAR = A_NRZ * framePolar;
else
    NRZ_POLAR = A_NRZ * framePolarinvarse;
end
%--- Output

figure(1)
subplot(4,1,1)
titulo = cat(2,'Data IN: ',bit_in);
plot(bitstream), grid on, title(titulo);
%axis([xi xf yi yf ])
axis([0 length(bitstream) -A_NRZ-deltaY A_NRZ+2])

subplot(4,1,2)
plot(NRZ_PU), grid on, title('Codigo NRZ-PU');
%axis([xi xf yi yf ])
axis([0 length(bitstream) -A_NRZ-deltaY A_NRZ+2])

subplot(4,1,3)
plot(NRZ_NU), grid on, title('Codigo NRZ-NU');
%axis([xi xf yi yf ])
axis([0 length(bitstream) -A_NRZ-deltaY A_NRZ+2])

subplot(4,1,4)
plot(NRZ_POLAR), grid on, title('Codigo NRZ-POLAR');
%axis([xi xf yi yf ])
axis([0 length(bitstream) -A_NRZ-deltaY A_NRZ+2])



%-------------------------