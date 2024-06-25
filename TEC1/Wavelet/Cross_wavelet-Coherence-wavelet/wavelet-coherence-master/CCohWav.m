
clear all;
%path('C:\Datos_Wavelet_ejemplo',path) 


% carga de datos

seriesname={'Potencial de hidrógeno (pH) del suelo' 'Conductividad Electrica (CE) del suelo'};
d1=load('BD_Suelos_PH.txt');
d2=load('BD_Suelos_CE.txt');


% wavelet 

figure('color',[1 1 1])
tlim=[min(d1(1,1),d2(1,1)) max(d1(end,1),d2(end,1))]; 
subplot(2,1,1);
wt(d1);
title(seriesname{1});
set(gca,'xlim',tlim);
subplot(2,1,2)
wt(d2)
title(seriesname{2})
set(gca,'xlim',tlim)


% Cross wavelet 

figure('color',[1 1 1])
xwt(d1,d2)
% titulo
title(['XWT: ' seriesname{1} '-' seriesname{2} ] )


% Coherence Wavelet 

figure('color',[1 1 1])
wtc(d1,d2)
% titulo
title(['WTC: ' seriesname{1} '-' seriesname{2} ] )
