  
clear
clc
close all



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 3 Final 400 grams LONG CYCLE.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time400_3 = CTTAsample2(1:end,3); 
         time400_3_p = CTTAsample2(1:end,3)+0.01;
        p400_3 = CTTAsample2(1:end,4);
        Strain400_3 = -100*CTTAsample2(1:end,5)/35;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



fig=figure('units','inch','position',[0,0,3.5,2.5]); hold on; grid on; set(gca,'FontSize',8);

yyaxis right;
H1 = plot(time400_3(1:(end)),(Strain400_3(1:(end))-Strain400_3(1)),':','LineWidth',1,'Color',[0.5,0.5,0.5]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Actuation strain (%)')
set(gca,'ycolor',[0.5,0.5,0.5])

yyaxis left;
H2 =  plot(time400_3_p(1:(end)),p400_3(1:(end)),'Linewidth',1,'Color',[0,0,0]);% plot(time4003(1:(end)),p400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Pressure (psi)')
set(gca,'ycolor',[0,0,0])
xlabel('Time (s)')
 xlim([0 300])
grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color
print(gcf,'0.4kgTemporalLONG.png','-dpng','-r700'); 
% title('400 grams')
% legend('SAMPLE 1','SAMPLE 1','Location','Northwest')
grid on 
set(groot, 'DefaultTextInterpreter', 'tex', ...
           'DefaultAxesTickLabelInterpreter', 'tex', ...
           'DefaultAxesFontName', 'tex', ...
           'DefaultLegendInterpreter', 'tex', ...
           'defaultFigureColor','w');

   

DataFig4C = [time400_3(1:(end)),(Strain400_3(1:(end))-Strain400_3(1)),time400_3_p(1:(end)),p400_3(1:(end))]

   fileName= 'Output3.xlsx';
   sheetName = 'Fig. 4C DATA';
   xlswrite(fileName,DataFig4C,sheetName);