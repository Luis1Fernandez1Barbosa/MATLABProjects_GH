

clear all;
%path('C:\Datos_Wavelet_ejemplo',path) 


% carga de datos

seriesname={'Temperatura' 'Anomalías de temperatura'};
d1=load('NSST_W_Salina_Cruz_1985_2018.txt');
d2=load('NSST_W_A_Salina_Cruz_1985_2018.txt');


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
