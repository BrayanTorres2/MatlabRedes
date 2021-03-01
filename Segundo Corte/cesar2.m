clc
clear all
close all

%--- DATOS DE ENTRADA
txt='hola mundo';

%--- PROCESOS
ascii=double(txt);

for m=1:length(txt)
    if(ascii(m)==32)
        ascii(m)=32-3;
    elseif(ascii(m)==120)
        ascii(m)=97-3;
    elseif(ascii(m)==121)
        ascii(m)=98-3;
    elseif(ascii(m)==122)
        ascii(m)=99-3;
    elseif(ascii(m)==88)
        ascii(m)=65-3;
    elseif(ascii(m)==89)
        ascii(m)=66-3;
    elseif(ascii(m)==90)
        ascii(m)=67-3;
        
    end
end

cesar = ascii + 3;
criptograma = char(cesar);

%--- RESULTADOS
fprintf('texto claro: %s\ncriptograma: %s\n',txt,criptograma)







