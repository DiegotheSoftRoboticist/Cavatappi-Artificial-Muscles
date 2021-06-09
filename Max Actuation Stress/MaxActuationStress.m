  
clear
clc
close all




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
 %
  %
   %
    %
     %
      %        
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 3 Final 1.1Kg blocked force.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time1100grams = CTTAsample2(1:end,3); 
         time1100grams_p = CTTAsample2(1:end,3)+0.03;
        p1100grams = CTTAsample2(1:end,4);
        Strain1100grams = -100*CTTAsample2(1:end,5)/80;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
% Fs = 20;        
% N = length(p400_Short);
% k = 0:(N-1);
% f = k*Fs/N;
% 
% F_nyq = Fs/0.1;
% Fc = 1;
% 
% Fc_norm = Fc/F_nyq;
% [b,a] = butter(6,Fc_norm,'low');
% 
% p400_Short_filt = filtfilt(b,a,p400_Short);
% Strain400_filt = filtfilt(b,a,Strain400_Short);


grid on 
set(groot, 'DefaultTextInterpreter', 'LaTeX', ...
           'DefaultAxesTickLabelInterpreter', 'LaTeX', ...
           'DefaultAxesFontName', 'LaTeX', ...
           'DefaultLegendInterpreter', 'LaTeX', ...
           'defaultFigureColor','w');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fig=figure; hold on; grid on; set(gca,'FontSize',20);

yyaxis right;
H1 = plot(time1100grams,Strain1100grams,':','LineWidth',1.5,'Color',[0.2,0,0.9]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Actuation Strain, $$\varepsilon$$ $$(^\%)$$')
set(gca,'ycolor',[0.2,0,0.9])
% ylim([-0.2 50])
yyaxis left;
H2 =  plot(time1100grams,p1100grams,'Linewidth',1.5);% plot(time4003(1:(end)),p400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Pressure (psi)')

xlabel('$Time (s)$')
% xlim([0 1.5])

print(gcf,'foo.png','-dpng','-r2500');         %// 1000 dpi
