%{
Problema 3.- Escribe un programa para calcular el consumo de gasolina de un vehículo. 
El programa debe recibir la distancia viajada (en kilómetros, km) y la cantidad de 
gasolina usada (en litros, L) y calcular el consumo tanto en km/L
como en la forma más usual de L/100 km. 
%} 
% Consumo de gasolina. Distancia=?km. Gas=?L. Calc 100km/L
d=input('Distancia recorrida(km): ');
l=input('Gasolina usada(l): ');
kml=d/l;
lkm=100/kml;
disp('Kilometros por litro: ');
disp(kml);
disp('Litros cada 100 Km: ');
disp(lkm);
