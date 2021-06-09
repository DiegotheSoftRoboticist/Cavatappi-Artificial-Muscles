  
clear
clc
close all



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 1 Final 100 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time100_1 = CTTAsample2(1:end,3); 
         time100_1_p = CTTAsample2(1:end,3)+0.01;
        p100_1 = CTTAsample2(1:end,4);
        Strain100_1 = -100*CTTAsample2(1:end,5)/29;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 2 Final 100 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time100_2 = CTTAsample2(1:end,3); 
         time100_2_p = CTTAsample2(1:end,3)+0.01;
        p100_2 = CTTAsample2(1:end,4);
        Strain100_2 = -100*CTTAsample2(1:end,5)/34;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 3 Final 100 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time100_3 = CTTAsample2(1:end,3); 
         time100_3_p = CTTAsample2(1:end,3)+0.02;
        p100_3 = CTTAsample2(1:end,4);
        Strain100_3 = -100*CTTAsample2(1:end,5)/46;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
 %
  %
   %
    %
     %
      %        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 1 Final 200 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time200_1 = CTTAsample2(1:end,3); 
         time200_1_p = CTTAsample2(1:end,3)+0.05;
        p200_1 = CTTAsample2(1:end,4);
        Strain200_1 = -100*CTTAsample2(1:end,5)/35;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 2 Final 200 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time200_2 = CTTAsample2(1:end,3); 
         time200_2_p = CTTAsample2(1:end,3)+0.05;
        p200_2 = CTTAsample2(1:end,4);
        Strain200_2 = -100*CTTAsample2(1:end,5)/41;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 3 Final 200 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time200_3 = CTTAsample2(1:end,3); 
         time200_3_p = CTTAsample2(1:end,3)+0.05;
        p200_3 = CTTAsample2(1:end,4);
        Strain200_3 = -100*CTTAsample2(1:end,5)/50;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
 %
  %
   %
    %
     %
      %        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 1 Final 300 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time300_1 = CTTAsample2(1:end,3); 
         time300_1_p = CTTAsample2(1:end,3)+0.055;
        p300_1 = CTTAsample2(1:end,4);
        Strain300_1 = -100*CTTAsample2(1:end,5)/45;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 2 Final 300 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time300_2 = CTTAsample2(1:end,3); 
         time300_2_p = CTTAsample2(1:end,3)+0.055;
        p300_2 = CTTAsample2(1:end,4);
        Strain300_2 = -100*CTTAsample2(1:end,5)/50;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 3 Final 300 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time300_3 = CTTAsample2(1:end,3); 
         time300_3_p = CTTAsample2(1:end,3)+0.055;
        p300_3 = CTTAsample2(1:end,4);
        Strain300_3 = -100*CTTAsample2(1:end,5)/65;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
 %
  %
   %
    %
     %
      %        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 1 Final 400 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time400_1 = CTTAsample2(1:end,3); 
         time400_1_p = CTTAsample2(1:end,3)+0.065;
        p400_1 = CTTAsample2(1:end,4);
        Strain400_1 = -100*CTTAsample2(1:end,5)/49;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 2 Final 400 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time400_2 = CTTAsample2(1:end,3); 
         time400_2_p = CTTAsample2(1:end,3)+0.065;
        p400_2 = CTTAsample2(1:end,4);
        Strain400_2 = -100*CTTAsample2(1:end,5)/63;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 3 Final 400 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time400_3 = CTTAsample2(1:end,3); 
         time400_3_p = CTTAsample2(1:end,3)+0.02;
        p400_3 = CTTAsample2(1:end,4);
        Strain400_3 = -100*CTTAsample2(1:end,5)/71;
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
 %
  %
   %
    %
     %
      %        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 1 Final 500 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time500_1 = CTTAsample2(1:end,3); 
         time500_1_p = CTTAsample2(1:end,3)+0.065;
        p500_1 = CTTAsample2(1:end,4);
        Strain500_1 = -100*CTTAsample2(1:end,5)/55;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 2 Final 500 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time500_2 = CTTAsample2(1:end,3); 
         time500_2_p = CTTAsample2(1:end,3)+0.065;
        p500_2 = CTTAsample2(1:end,4);
        Strain500_2 = -100*CTTAsample2(1:end,5)/68;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 3 Final 500 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time500_3 = CTTAsample2(1:end,3); 
         time500_3_p = CTTAsample2(1:end,3)+0.065;
        p500_3 = CTTAsample2(1:end,4);
        Strain500_3 = -100*CTTAsample2(1:end,5)/83;
        
        
        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fig=figure('units','inch','position',[0,0,3.5,2.5]); hold on; grid on; set(gca,'FontSize',8);

yyaxis right;
H1 = plot(time400_3(6972:(8545+500))-time400_3(6972),(Strain400_3(6972:(8545+500))-Strain400_3(6972)),':','LineWidth',1,'Color',[0.5,0.5,0.5]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Actuation strain (%)')
set(gca,'ycolor',[0.5,0.5,0.5])

yyaxis left;
H2 =  plot(time400_3_p(6952:(8525+500))-time400_3_p(6952),p400_3(6952:(8525+500)),'Linewidth',1,'Color',[0,0,0]);% plot(time4003(1:(end)),p400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Pressure (psi)')
set(gca,'ycolor',[0,0,0])

xlabel('Time (s)')
 xlim([0 2])
  
grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color
print(gcf,'0.4kgTemporalplot.png','-dpng','-r700');   

Datatime400 = time400_3(6972:(8545+500))-time400_3(6972);
DatatimePressure400 = time400_3_p(6952:(8525+500))-time400_3_p(6952);
DataStrain400 = (Strain400_3(6972:(8545+500))-Strain400_3(6972));
DataPressure400 = p400_3(6952:(8525+500))

DataFig4B = [Datatime400,DataStrain400,DatatimePressure400,DataPressure400]

   fileName= 'Output2.xlsx';
   sheetName = 'Fig. 4B DATA';
   xlswrite(fileName,DataFig4B,sheetName);
   

fig=figure('units','inch','position',[0,0,3.5/2.2,2.5/2.2]); hold on; grid on; set(gca,'FontSize',8);
yyaxis right;
H1 = plot(time400_3(6972:(8545+500))-time400_3(6972),(Strain400_3(6972:(8545+500))-Strain400_3(6972)),':','LineWidth',1,'Color',[0.5,0.5,0.5]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)
set(gca,'ycolor',[0.5,0.5,0.5])
ylim([0.09 15])
 
yyaxis left;
H2 =  plot(time400_3_p(6952:(8525+500))-time400_3_p(6952),p400_3(6952:(8525+500)),'Linewidth',1,'Color',[0,0,0]);% plot(time4003(1:(end)),p400_filt3(1:(end)),':','Linewidth',1.5)

set(gca,'ycolor',[0,0,0])
ylim([0 200])
 
xlim([0.09 0.25])
 grid off 
 
 
% grid on 
% set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color
print(gcf,'Zoom_0.4kgTemporalplot.png','-dpng','-r700'); 


fig=figure; hold on; grid on; set(gca,'FontSize',20);

yyaxis right;
H1 = plot(time200_3(1:(end))-time200_3(1),(Strain200_3(1:(end))-Strain200_3(1)),':','LineWidth',1.5,'Color',[0.2,0,0.9]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Actuation strain, (%)')
set(gca,'ycolor',[0.2,0,0.9])

yyaxis left;
H2 =  plot(time200_3_p(1:(end))-time200_3_p(1),p200_3(1:(end)),'Linewidth',1.5);% plot(time4003(1:(end)),p400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Pressure (psi)')

xlabel('Time (s)')
% xlim([0 2])

% title('400 grams')
% legend('SAMPLE 1','SAMPLE 1','Location','Northwest')
% grid on 

set(groot, 'DefaultTextInterpreter', 'tex', ...
           'DefaultAxesTickLabelInterpreter', 'tex', ...
           'DefaultAxesFontName', 'tex', ...
           'DefaultLegendInterpreter', 'tex', ...
           'defaultFigureColor','w');
% %SAMPLE 1
% p100_1PLOT = p100_1(208276:209539);
% p100_1PLOT = p100_1PLOT(1:704);
%  Strain100_1PLOT = Strain100_1(208880:209943)-Strain100_1(208880);       
%  Strain100_1PLOTCorrected (1:121) =  Strain100_1PLOT(1:121);
%  Strain100_1PLOTCorrected (122:704) = Strain100_1PLOT(122:704)-4.726+0.562;
%  

% set(findall(gcf,'-property','FontSize'),'FontSize',6)
% set(gca,'FontName', 'Arial')
% PUBFIGPREP(figure(9),'Ratio',1.62,'width',8,'margin','on')
% results_location = 'Result_figures';
% print('KILO_mean_95conf','-dpdf','-fillpage')


 close all 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 fig1=figure; hold on; grid on; set(gca, 'FontName', 'Arial')

 %set(gca,'FontSize',20);
 
 plot(p100_1(10023:10143+20-1),Strain100_1(10053:10053+120+20-1)-Strain100_1(10053),'r','Linewidth',1.5)
 plot(p100_2(10023:10143+20-1),Strain100_2(10053:10053+120+20-1)-Strain100_2(10053),':r','Linewidth',1.5)
 plot(p100_3(11027:11027+120+20-1),Strain100_3(11027+30:11027+30+120+20-1)-Strain100_3(11027+30),'-.r','Linewidth',1.5) 
 
 plot(p200_1(10028:10138+30-1),Strain200_1(10068:10068+110+30-1)-Strain200_1(10068),'g','Linewidth',1.5)
 plot(p200_2(10028:10158+10-1),Strain200_2(10068:10068+130+10-1)-Strain200_2(10068),':g','Linewidth',1.5)
 plot(p200_3(10020:10150+10-1),Strain200_3(10050:10050+130+10-1)-Strain200_3(10050),'-.g','Linewidth',1.5)

 plot(p300_1(10023:10143+20-1),Strain300_1(10023+40:10023+40+120+20-1)-Strain300_1(10023+40),'k','Linewidth',1.5)
 plot(p300_2(11022:11022+120+20-1),Strain300_2(11022+40:11022+40+120+20-1)-Strain300_2(11022+40),':k','Linewidth',1.5)
 plot(p300_3(11022:11022+120+20-1),Strain300_3(11022+40:11022+40+120+20-1)-Strain300_3(11022+40),'-.k','Linewidth',1.5)
 
 plot(p400_1(10018:10018+120+20-1),Strain400_1(10018+40:10018+40+120+20-1)-Strain400_1(10018+40),'b','Linewidth',1.5)
 plot(p400_2(10018:10018+120+20-1),Strain400_2(10018+40:10018+40+120+20-1)-Strain400_2(10018+40),':b','Linewidth',1.5)
 plot(p400_3(10018:10018+120+20-1),Strain400_3(10018+40:10018+40+120+20-1)-Strain400_3(10018+40),'-.b','Linewidth',1.5)
 
 plot(p500_1(10018:10018+120+20-1),Strain500_1(10018+40:10018+40+120+20-1)-Strain500_1(10018+40),'m','Linewidth',1.5)
 plot(p500_2(11022:11022+120+20-1),Strain500_2(11022+40:11022+40+120+20-1)-Strain500_2(11022+40),':m','Linewidth',1.5)
 plot(p500_3(10018:10018+120+20-1),Strain500_3(10018+40:10018+40+120+20-1)-Strain500_3(10018+40),'-.m','Linewidth',1.5)
 
 
% xlim([0 240])
% ylim([-1 25])
 
%  
 legend('SAMPLE 1 (100 grams)','SAMPLE 2 (100 grams)','SAMPLE 1 (200 grams)','SAMPLE 1 (300 grams)','SAMPLE 1 (400 grams)','SAMPLE 1 (500 grams)'...
    ,'SAMPLE 2 (200 grams)','SAMPLE 2 (300 grams)','SAMPLE 2 (400 grams)','SAMPLE 2 (500 grams)'...
    ,'SAMPLE 3 (100 grams)','SAMPLE 3 (200 grams)','SAMPLE 3 (300 grams)','SAMPLE 3 (400 grams)','SAMPLE 3 (500 grams)')

 xlabel('Pressure (psi)')
 ylabel('Actuation Strain, $$\varepsilon$$ $$(^\%)$$')
 
 grid on 

 
 p100_1new = p100_1(10023:10143+20-1);
 Strain100_1new = Strain100_1(10053:10053+120+20-1)-Strain100_1(10053);
 p100_2new = p100_2(10023:10143+20-1);
 Strain100_2new = Strain100_2(10053:10053+120+20-1)-Strain100_2(10053);
 p100_3new = p100_3(11027:11027+120+20-1);
 Strain100_3new = Strain100_3(11027+30:11027+30+120+20-1)-Strain100_3(11027+30);
 
 p200_1new = p200_1(10028:10138+30+25);
 Strain200_1new = Strain200_1(10068:10068+110+30+25)-Strain200_1(10068);
 p200_2new = p200_2(10028:10158+10+25);
 Strain200_2new = Strain200_2(10068:10068+130+10+25)-Strain200_2(10068);
 p200_3new = p200_3(10020:10150+10+25);
 Strain200_3new = Strain200_3(10050:10050+130+10+25)-Strain200_3(10050);

 p300_1new = p300_1(10023:10143+20+25);
 Strain300_1new = Strain300_1(10023+40:10023+40+120+20+25)-Strain300_1(10023+40);
 p300_2new = p300_2(11022:11022+120+20+25);
 Strain300_2new = Strain300_2(11022+40:11022+40+120+20+25)-Strain300_2(11022+40);
 p300_3new = p300_3(11022:11022+120+20+25);
 Strain300_3new = Strain300_3(11022+40:11022+40+120+20+25)-Strain300_3(11022+40);
 
 p400_1new = p400_1(10018:10018+120+20+25);
 Strain400_1new = Strain400_1(10018+40:10018+40+120+20+25)-Strain400_1(10018+40);
 p400_2new = p400_2(10018:10018+120+20+25);
 Strain400_2new = Strain400_2(10018+40:10018+40+120+20+25)-Strain400_2(10018+40);
 p400_3new = p400_3(10018:10018+120+20+25);
 Strain400_3new = Strain400_3(10018+40:10018+40+120+20+25)-Strain400_3(10018+40);
 
 p500_1new = p500_1(10018:10018+120+20+25);
 Strain500_1new = Strain500_1(10018+40:10018+40+120+20+25)-Strain500_1(10018+40);
 p500_2new = p500_2(11022:11022+120+20+25);
 Strain500_2new = Strain500_2(11022+40:11022+40+120+20+25)-Strain500_2(11022+40);
 p500_3new = p500_3(10018:10018+120+20+25);
 Strain500_3new = Strain500_3(10018+40:10018+40+120+20+25)-Strain500_3(10018+40);
 
 n=1
 
 p_stat = [0 15 30 45 60 75 90 105 120 135 150 165 180 195 210 220];
 
 for i =1:length(p_stat)
     if p_stat(i) == 0
   Strain100_1stat(n) = 0;
   Strain100_2stat(n) = 0;
   Strain100_3stat(n) = 0;
   
   Strain200_1stat(n) = 0;
   Strain200_2stat(n) = 0;
   Strain200_3stat(n) = 0;
   
   Strain300_1stat(n) = 0;
   Strain300_2stat(n) = 0;
   Strain300_3stat(n) = 0;
 
   Strain400_1stat(n) = 0;
   Strain400_2stat(n) = 0;
   Strain400_3stat(n) = 0;
 
   Strain500_1stat(n) = 0;
   Strain500_2stat(n) = 0;
   Strain500_3stat(n) = 0;
     else
   Strain100_1stat(n) = interp1q(p100_1new,Strain100_1new,p_stat(i));
   Strain100_2stat(n) = interp1q(p100_2new,Strain100_2new,p_stat(i));
   Strain100_3stat(n) = interp1q(p100_3new,Strain100_3new,p_stat(i));
   
   Strain200_1stat(n) = interp1q(p200_1new,Strain200_1new,p_stat(i));
   Strain200_2stat(n) = interp1q(p200_2new,Strain200_2new,p_stat(i));
   Strain200_3stat(n) = interp1q(p200_3new,Strain200_3new,p_stat(i));
   
   Strain300_1stat(n) = interp1q(p300_1new,Strain300_1new,p_stat(i));
   Strain300_2stat(n) = interp1q(p300_2new,Strain300_2new,p_stat(i));
   Strain300_3stat(n) = interp1q(p300_3new,Strain300_3new,p_stat(i));
 
   Strain400_1stat(n) = interp1q(p400_1new,Strain400_1new,p_stat(i));
   Strain400_2stat(n) = interp1q(p400_2new,Strain400_2new,p_stat(i));
   Strain400_3stat(n) = interp1q(p400_3new,Strain400_3new,p_stat(i));
 
   Strain500_1stat(n) = interp1q(p500_1new,Strain500_1new,p_stat(i));
   Strain500_2stat(n) = interp1q(p500_2new,Strain500_2new,p_stat(i));
   Strain500_3stat(n) = interp1q(p500_3new,Strain500_3new,p_stat(i));
     end
 n = n+1;
 end
 
    Strain200_3stat(16) = 21;

 
 
 
 
 
 n = 1;
for i = 1:length(Strain100_1stat)
    Strain_calulate = [Strain100_1stat(i),Strain100_2stat(i),Strain100_3stat(i)];
   Strain100_mean(n) = mean(Strain_calulate) % Mean Of All Experiments At Each Value Of ‘x’
   Strain100_mean(i) = Strain100_mean(n);
   SEM_Strain100(n) = std(Strain_calulate)/sqrt(length(Strain_calulate)); % Compute ‘Standard Error Of The Mean’ Of All Experiments At Each Value Of ‘x’
   n = n+1;
end
CI95_100 = tinv([0.025 0.975], length(Strain_calulate)-1);                    % Calculate 95% Probability Intervals Of t-Distribution
yCI95_100 = bsxfun(@times, SEM_Strain100, CI95_100(:)); % Calculate 95% Confidence Intervals Of All Experiments At Each Value Of ‘x’

n = 1;
for i = 1:length(Strain100_1stat)
    Strain_calulate = [Strain200_1stat(i),Strain200_2stat(i),Strain200_3stat(i)];
   Strain200_mean(n) = mean(Strain_calulate);
   Strain200_mean(i) = Strain200_mean(n);
   SEM_Strain200(n) = std(Strain_calulate)/sqrt(length(Strain_calulate));
   n = n+1;
end
CI95_200 = tinv([0.025 0.975], length(Strain_calulate)-1);                    % Calculate 95% Probability Intervals Of t-Distribution
yCI95_200 = bsxfun(@times, SEM_Strain200, CI95_200(:));

n = 1;
for i = 1:length(Strain100_1stat)
    Strain_calulate = [Strain300_1stat(i),Strain300_2stat(i),Strain300_3stat(i)];
   Strain300_mean(n) = mean(Strain_calulate);
   Strain300_mean(i) = Strain300_mean(n);
   SEM_Strain300(n) = std(Strain_calulate)/sqrt(length(Strain_calulate));
   n = n+1;
end
CI95_300 = tinv([0.025 0.975], length(Strain_calulate)-1);                    % Calculate 95% Probability Intervals Of t-Distribution
yCI95_300 = bsxfun(@times, SEM_Strain300, CI95_300(:));

n = 1;
for i = 1:length(Strain300_1stat)
    Strain_calulate = [Strain400_1stat(i),Strain400_2stat(i),Strain400_3stat(i)];
   Strain400_mean(n) = mean(Strain_calulate);
   Strain400_mean(i) = Strain400_mean(n);
   SEM_Strain400(n) = std(Strain_calulate)/sqrt(length(Strain_calulate));
   n = n+1;
end
CI95_400 = tinv([0.025 0.975], length(Strain_calulate)-1);                    % Calculate 95% Probability Intervals Of t-Distribution
yCI95_400 = bsxfun(@times, SEM_Strain400, CI95_400(:));

n = 1;
for i = 1:length(Strain300_1stat)
    Strain_calulate = [Strain500_1stat(i),Strain500_2stat(i),Strain500_3stat(i)];
   Strain500_mean(n) = mean(Strain_calulate);
   Strain500_mean(i) = Strain500_mean(n);
   SEM_Strain500(n) = std(Strain_calulate)/sqrt(length(Strain_calulate));
   n = n+1;
end
CI95_500 = tinv([0.025 0.975], length(Strain_calulate)-1);                    % Calculate 95% Probability Intervals Of t-Distribution
yCI95_500 = bsxfun(@times, SEM_Strain500, CI95_500(:));



 close all
 fig=figure('units','inch','position',[0,0,3.5,2.5]); hold on; grid on; set(gca,'FontSize',8);
 
plot(p_stat,Strain100_mean,'LineWidth',0.4,'Color',[0,0,0]);

 a = errorbar(p_stat,Strain100_mean,yCI95_100(2,:),'o','MarkerSize',3,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0.27,0.67,0.6],'LineWidth',0.6,'Color',[0.27,0.67,0.6])
plot(p_stat,Strain200_mean,'LineWidth',0.4,'Color',[0,0,0]);
 b = errorbar(p_stat,Strain200_mean,yCI95_200(2,:),'s','MarkerSize',3,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0.8,0.4,0.47],'LineWidth',0.6,'Color',[0.8,0.4,0.47])
plot(p_stat,Strain300_mean,'LineWidth',0.4,'Color',[0,0,0]);
 c = errorbar(p_stat,Strain300_mean,yCI95_300(2,:),'d','MarkerSize',3,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0.87,0.8,0.47],'LineWidth',0.6,'Color',[0.87,0.8,0.47])
plot(p_stat,Strain400_mean,'LineWidth',0.4,'Color',[0,0,0]);
 d = errorbar(p_stat,Strain400_mean,yCI95_400(2,:),'p','MarkerSize',5,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0.67,0.27,0.6],'LineWidth',0.6,'Color',[0.67,0.27,0.6])
plot(p_stat,Strain500_mean,'LineWidth',0.4,'Color',[0,0,0]);
 e = errorbar(p_stat,Strain500_mean,yCI95_500(2,:),'^','MarkerSize',3,...
    'MarkerEdgeColor','black',...
    'MarkerFaceColor',[0.5333    0.8000    0.9333],'LineWidth',0.6,'Color',[0.5333    0.8000    0.9333])

ylim([-1 30]); set(gca,'YTick',[0:5:30]);

xlim([0 280]); set(gca,'xTick',[0:50:250]);


%  legend([a b c d e],'m = 0.1 kg','m = 0.2 kg','m = 0.3 kg','m = 0.4 kg','m = 0.5 kg')



xlabel('Pressure (psi)')
ylabel('Actuation strain (%)')
 
grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color
print(gcf,'PressureVsActuation.png','-dpng','-r700');   

Data = [p_stat;Strain100_mean;yCI95_100;Strain200_mean;yCI95_200;Strain300_mean;yCI95_300;Strain400_mean;yCI95_400;Strain500_mean;yCI95_500]'

% T = table(Pressure(psi),StrainUnder'0.1kg(%)',LowerLimit(0.1kg),UpperLimit(0.1 kg)),...
% %     'Strain under 0.2 kg (%)','Lower Limit (0.2 kg)','Upper Limit (0.2 kg)',...
% %     'Strain under 0.3 kg (%)','Lower Limit (0.3 kg)','Upper Limit (0.3 kg)'...
% %     ,'Strain under 0.4 kg (%)','Lower Limit (0.4 kg)','Upper Limit (0.4 kg)'...
% %     ,'Strain under 0.5 kg (%)','Lower Limit (0.5 kg)','Upper Limit (0.5 kg)');
%   T(1:4,:)
% 
%    tabulate(C)
%  % print output
   fileName= 'Output1.xlsx';
   sheetName = 'Fig. 4A DATA';
   xlswrite(fileName,Data,sheetName);
   
   
   