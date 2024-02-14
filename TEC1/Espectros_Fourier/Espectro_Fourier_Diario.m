clear all;

%% Carga de datos de PH
dhw1= load('BD_Suelos_PH.txt');
[f1,c1]=size(dhw1);
Dias1=dhw1(:,1);
Datos1=dhw1(:,2);
dhw1_prom=mean(dhw1);
dhw1=dhw1-dhw1_prom;

%% Carga de datos de CE
dhw2= load('BD_Suelos_CE.txt');
[f2,c2]=size(dhw2);
Dias2=dhw2(:,1);
Datos2=dhw2(:,2);
dhw2_prom=mean(dhw2);
dhw2=dhw2-dhw2_prom;

%% Gráficas de datos
figure(1);
whitebg('k');
    %Clorofila
subplot(2,1,1);
plot(Dias1,Datos1);
grid on; 
title('Reacción del suelo - pH');
xlabel('Díario del 1/Ene/2002 al 1/Ene/2009');
ylabel('Potencial de higrogeno(pH)[0-14]');
    %Temperatura
subplot(2,1,2);
plot(Dias2,Datos2);
grid on; 
title('Conductividad Electrica de los suelos');
xlabel('Díario del 1/Ene/2002 al 1/Ene/2009');
ylabel('Conductividad Electrica (CE)[dS/m]');

%% Transformada de Fourier: 
    % Clorofila
L = length(dhw1); %muestras-tamaño de señal
Fs = 365;   %Frecuencia de muestreo                            
T = 1/Fs; %Periodo de muestreo                        
t = (0:L-1)*T;  %Vector de tiempo
S = dhw1;   %Señal
Y = fft(S);  
M=length(Y);
    %Temperatura
L2 = length(dhw2); %muestras-tamaño de señal
Fs2 = 365;   %Frecuencia de muestreo                            
T2 = 1/Fs2; %Periodo de muestreo                        
t2 = (0:L2-1)*T2;  %Vector de tiempo
S2 = dhw2;   %Señal
Y2 = fft(S2);  
M2=length(Y2);

%% Densidad espectral
    % Clorofila
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
f = Fs*(0:(L/2))/L; %vector de frecuencias
    % Temperatura
P4 = abs(Y2/L2);
P3 = P4(1:L2/2+1);
P3(2:end-1) = 2*P3(2:end-1);
fr2 = Fs2*(0:(L2/2))/L2; %vector de frecuencias

%% Gráfica del espectro: 
figure(2);
whitebg('k');
    % Clorofila
subplot(2,1,1);
plot(f,P1);
grid on;
title('Espectro de frecuencias: pH');
xlabel('f [1/Año]');
ylabel('|P1(f)|');
    % Temperatura
subplot(2,1,2);
plot(fr2,P3);
grid on;
title('Espectro de frecuencias: CE');
xlabel('f2 [1/Año]');
ylabel('|P3(f2)|');
