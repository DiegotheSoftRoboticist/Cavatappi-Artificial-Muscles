  
clear
clc
close all



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'max strain prestrain 100 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        timemaxstrain = CTTAsample2(1:end,3); 
         timemaxstrain = CTTAsample2(1:end,3)+0.01;
        pmaxstrain = CTTAsample2(1:end,4);
        Strainmaxstrain = -100*CTTAsample2(1:end,5)/67;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

filename = 'Sample 3 Final 1.1Kg blocked force.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        timeBlocked = CTTAsample2(1:end,3); 
         timeBlocked = CTTAsample2(1:end,3)+0.01;
        pBlocked = CTTAsample2(1:end,4);
        StrainBlocked = -100*CTTAsample2(1:end,5)/110;
        
        
set(groot, 'DefaultTextInterpreter', 'tex', ...
           'DefaultAxesTickLabelInterpreter', 'tex', ...
           'DefaultAxesFontName', 'tex', ...
           'DefaultLegendInterpreter', 'tex', ...
           'defaultFigureColor','w');
        
        
        
fig=figure('units','inch','position',[0,0,3.5,2.5]); hold on; grid on; set(gca,'FontSize',8);

yyaxis right;
H1 = plot(timemaxstrain(433:(1161))-timemaxstrain(433),(Strainmaxstrain(433:(1161))-Strainmaxstrain(433)),':','LineWidth',1,'Color',[0.5,0.5,0.5]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Actuation strain (%)')
set(gca,'ycolor',[0.5,0.5,0.5])
ylim([0 60])
yyaxis left;
H2 =  plot(timemaxstrain(433:(1161))-timemaxstrain(433),pmaxstrain(433:(1161)),'Linewidth',1,'Color',[0, 0, 0]);% plot(time4003(1:(end)),p400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Pressure (psi)')
set(gca,'ycolor',[0, 0, 0])
xlabel('Time (s)')
xlim([0,8]);
set(gca,'XTick',[0:1:8]);
% title('400 grams')
% legend('SAMPLE 1','SAMPLE 1','Location','Northwest')
grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color

print(gcf,'MaxStrain.png','-dpng','-r700');         %// 800 dpi

DataFigS5B = [timemaxstrain(433:(1161))-timemaxstrain(433),(Strainmaxstrain(433:(1161))-Strainmaxstrain(433))...
    ,timemaxstrain(433:(1161))-timemaxstrain(433),pmaxstrain(433:(1161))]

   fileName= 'Output4.xlsx';
   sheetName = 'Fig. S5A';
   xlswrite(fileName,DataFigS5B,sheetName);
   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fig=figure('units','inch','position',[0,0,3.5,2.5]); hold on; grid on; set(gca,'FontSize',8);

yyaxis right;
H1 = plot(timeBlocked(6864:(end))-timeBlocked(6864),(StrainBlocked(6864:(end))-StrainBlocked(6864)),':','LineWidth',1,'Color',[0.5,0.5,0.5]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Actuation strain (%)')
set(gca,'ycolor',[0.5,0.5,0.5])

yyaxis left;
H2 =  plot(timeBlocked(6864:(end))-timeBlocked(6864),pBlocked(6864:(end)),'Linewidth',1,'Color',[0, 0, 0]);% plot(time4003(1:(end)),p400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Pressure (psi)')
set(gca,'ycolor',[0, 0, 0])

xlabel('Time (s)')
xlim([0,6]);
set(gca,'XTick',[0:1:6]);
% title('400 grams')
% legend('SAMPLE 1','SAMPLE 1','Location','Northwest')
grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color

print(gcf,'MaxStress.png','-dpng','-r700');         %// 800 dpi


DataFigS5A = [timeBlocked(6864:(end))-timeBlocked(6864),(StrainBlocked(6864:(end))-StrainBlocked(6864))...
    ,timeBlocked(6864:(end))-timeBlocked(6864),pBlocked(6864:(end))]

   fileName= 'Output5.xlsx';
   sheetName = 'Fig. S5A';
   xlswrite(fileName,DataFigS5A,sheetName);
