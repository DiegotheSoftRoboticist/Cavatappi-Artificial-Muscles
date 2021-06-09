  
clear
clc
close all



%Diego Higueras-Ruiz
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
 %
  %
   %
    %
     %
      %        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'EfficiencyCavatappi.xlsx';
    sheet = 'Sheet1';
    EfficiencyCavatappi = xlsread(filename, sheet,'A:H');
        Volume = EfficiencyCavatappi(1:end,6); 
        Pressure = EfficiencyCavatappi(1:end,3)+0.1;
        Disp = EfficiencyCavatappi(1:end,7);


grid on 
set(groot, 'DefaultTextInterpreter', 'tex', ...
           'DefaultAxesTickLabelInterpreter', 'tex', ...
           'DefaultAxesFontName', 'tex', ...
           'DefaultLegendInterpreter', 'tex', ...
           'defaultFigureColor','w');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fig=figure('units','inch','position',[0,0,3.5,2.5]); hold on; grid on; set(gca,'FontSize',8);

H=area(Volume,Pressure);
 set(H,'FaceColor',[0, 0.4470, 0.7410],'FaceAlpha',0.2);
% alpha(H,.5)

h=plot(Volume,Pressure,'-o','MarkerSize',4,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[.75 .75 1],'LineWidth',0.8,'Color',[.3 .3 .3]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)


ylabel('Absolute Pressure (MPa)')


xlabel('Volume (mm^3)')
% xlim([0 1.5])



grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color
print(gcf,'EnergyIN.png','-dpng','-r700');         %// 800 dpi


fig=figure('units','inch','position',[0,0,3.5,2.5]); hold on; grid on; set(gca,'FontSize',8);

F = [3 3 3 3 3 3 3];
H=area(Disp,F);
 set(H,'FaceColor',[[0.6350, 0.0780, 0.1840]],'FaceAlpha',0.2);
% alpha(H,.5)

h=plot(Disp,F,'-o','MarkerSize',4,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[.75 .75 1],'LineWidth',0.8,'Color',[.3 .3 .3]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)

ylim([0,4]);
set(gca,'YTick',[0:1:4]);

xlim([0,61]);
set(gca,'xTick',[0:10:61]);
ylabel('Load (N)')


xlabel('Displacement (mm)')


grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color
print(gcf,'WorkOUT.png','-dpng','-r600');         %// 800 dpi


Energyin = trapz(Volume/1000000000,Pressure*1000000)
Workout = trapz(Disp/1000,F)
Efficiency = Workout/Energyin

DataFigS4 = [Volume,Pressure,Disp,F];

fileName= 'Output1.xlsx';
   sheetName = 'Fig. S4 DATA';
xlswrite(fileName,DataFigS4,sheetName);
