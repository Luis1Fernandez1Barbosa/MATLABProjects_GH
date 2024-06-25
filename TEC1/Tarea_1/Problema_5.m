%{
Problema 5.-
Cuando una resistencia (R), un capacitor (C) y una batería (V ) son conectados en serie, una carga Q se
acumula en el capacitor de acuerdo con la siguiente fórmula:
Q(t) = CV [1 - e^(-t/RC)];
siempre y cuando no haya carga en el capacitor al tiempo t = 0. Supón que nos interesa monitorear la carga
en el capacitor cada 0.1 s para detectar cuando alcance un nivel de 8 unidades de carga, dado que V = 9,
R = 4 y C = 1. Escribe un programa que grafique el tiempo y la carga cada 0.1 s hasta que la carga sobrepase
por primera vez 8 unidades (es decir, la última carga que se muestre tiene que superar las 8 unidades). Una
vez que hayas hecho esto, escribe otro programa que grafique la carga solamente mientras ésta sea menor que
8 unidades.
%}

R=4;
C=1;
V=9;
t=0;
Q=0;
fa=8.1;
%Limite Q=8, monitoreo cada 0.1 s
%Ultima carga sobrepasa 8 u (grafica)
%for Qfa=0:fa  
    if  (Q<=fa)
        Q=C*V*(1-(exp(-t/(R*C))));
        t=t+0.1;
        disp(Q)
        plot(Q,t)
    ylabel('Carga Electrica -Q[C]')
    xlabel('Tiempo t[s]')
    end
    
%end
  
    
%grafica cuando