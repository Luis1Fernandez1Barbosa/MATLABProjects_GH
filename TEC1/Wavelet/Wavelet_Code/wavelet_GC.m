% Program to calculate the XWT between solar radiation and CO2 partial
% pressure 

clear
clc

%% Load data

load xwt_example.mat



%% Wavelet PCO2 - rad

figure

% Do the Cross-Wavelet transform between PCO2 and solar radiation (use 'Morlet' mother wavelet to identify periodic signals)       
[Wxy,period,scale,coi,sig95]=xwt([dates_GC,Solar_radiation_GC],[dates_GC,pCO2_GC],'Mother','Morlet');
% [Wxy,period,scale,coi,sig95]=xwt([dates_GC,rad_GC],[dates_GC,PCO2_GC],'Mother','Paul'); (use 'Paul' mother wavelet to identify sporadic events)

[m n]=size(sig95);
sig95=[sig95,zeros(m,1)];

% Plot cross-spectrum figure
crossspectrum_figure_rad_GD(dates_GC,Solar_radiation_GC,pCO2_GC,period,Wxy,sig95,coi);
title('XWT example','Fontsize',22);

sz = get(gcf,'Position');
set(gcf,'Position',[sz(1) sz(2) 1.7*sz(3) sz(4)]);

% Freeze colors
get(gcf)
set(gcf,'color',[1 1 1]);
% set(gcf,'inverthardcopy','off');

set(findobj(gca,'type','patch'),'alphadatamap','none','facealpha',1)

% % Save figure
% %================
% 
% % Define figure name and directory
% figdir = './';
% figname = 'PCO2_rad_GC';
% 
% % 1. png format
% % print('-dpng','-r300',[figdir,figname]);
% % print('-dtiff ',[figdir,figname]);
% print('-depsc2 ',[figdir,figname]);



