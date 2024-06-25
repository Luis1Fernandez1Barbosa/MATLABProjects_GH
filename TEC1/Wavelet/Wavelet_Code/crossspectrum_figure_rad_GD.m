function crossspectrum_figure_rad_GD(t,x,y,period,Wxy,sig95,coi)

% From xwt.m written by Aslak Grinsted 2002-2004
%
% http://www.pol.ac.uk/home/research/waveletcoherence/

sigmax=std(x);

sigmay=std(y);

dt = diff(t);
dt = dt(1);
Yticks = 2.^(fix(log2(min(period))):fix(log2(max(period))));

Args=struct('Pad',1,...      % pad the time series with zeroes (recommended)
            'Dj',1/12, ...    % this will do 12 sub-octaves per octave
            'S0',2*dt,...    % this says start at a scale of 2 years
            'J1',[],...
            'Mother','Morlet', ...
            'MaxScale',[],...   %a more simple way to specify J1
            'MakeFigure',(nargout==0),...
            'BlackandWhite',0,...
            'AR1','auto',...
            'ArrowDensity',[30 30],...
            'ArrowSize',1.3,... %modified by Irene (default = 1)
            'ArrowHeadSize',1.3); %modified by Irene (default = 1)
ad=mean(Args.ArrowDensity);
Args.ArrowSize=Args.ArrowSize*30*.03/ad;
Args.ArrowHeadSize=Args.ArrowHeadSize*Args.ArrowSize*220;


% figure
%set(gcf,'Visible','off')
H=imagesc(t,log2(period),log2(abs(Wxy/(sigmax*sigmay))));%#ok
%logpow=log2(abs(Wxy/(sigmax*sigmay)));
%[c,H]=safecontourf(t,log2(period),logpow,[min(logpow(:)):.25:max(logpow(:))]);
%set(H,'linestyle','none')

datetick('x',20,'keeplimits','keepticks')
        a=get(gca,'XTickLabel'); %get current tick labels
        set(gca,'XTickLabel',[]); %erase current tick labels from figure
        b=get(gca,'XTick'); %get tick label positions
 set(gca,'XTickLabel',{'147', '167', '187', '207', '227', '247'});
   
clim=get(gca,'clim'); %center color limits around log2(1)=0
clim=[-1 1]*max(clim(2),3);
set(gca,'clim',clim)

HCB=colorbar;
set(HCB,'ytick',-7:7);
barylbls=rats(2.^(get(HCB,'ytick')'));
barylbls([1 end],:)=' ';
barylbls(:,all(barylbls==' ',1))=[];
set(HCB,'yticklabel',barylbls);

set(gca,'YLim',log2([min(period),max(period)]), ...
    'YDir','reverse', ...
    'YTick',log2(Yticks(:)), ...
    'YTickLabel',num2str(Yticks'),'FontSize',20, ...
    'layer','top')
xlabel('Day of year','Fontsize',20)
ylabel('Period (days) ','Fontsize',20)
hold on

aWxy=angle(Wxy);

phs_dt=round(length(t)/Args.ArrowDensity(1)); tidx=max(floor(phs_dt/2),1):phs_dt:length(t);
phs_dp=round(length(period)/Args.ArrowDensity(2)); pidx=max(floor(phs_dp/2),1):phs_dp:length(period);
phaseplot(t(tidx),log2(period(pidx)),aWxy(pidx,tidx),Args.ArrowSize,Args.ArrowHeadSize);

if strcmpi(Args.Mother,'morlet')
    [c,h] = contour(t,log2(period),sig95,[1 1],'k');%#ok
    set(h,'linewidth',2)
else
    warning('XWT:sigLevelNotValid','XWT Significance level calculation is only valid for morlet wavelet.')
    %TODO: alternatively load from same file as wtc (needs to be coded!)
end
tt=[t([1 1])-dt*.5;t;t([end end])+dt*.5];
% hcoi=fill(tt,log2([period([end 1]) coi period([1 end])]),'w');
hcoi=fill(tt(1:end-1),log2([period([end 1]) coi period([1 end])]),'w'); % To use only with Guadalcacin
set(hcoi,'alphadatamapping','direct','facealpha',.5)
hold off

