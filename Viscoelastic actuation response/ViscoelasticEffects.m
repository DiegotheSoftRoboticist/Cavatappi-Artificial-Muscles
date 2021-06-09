  
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
filename = 'Sample 3 Final 400 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time400_Short = CTTAsample2(1:end,3); 
         time400_Short_p = CTTAsample2(1:end,3)+0.03;
        p400_Short = CTTAsample2(1:end,4);
        Strain400_Short = -100*CTTAsample2(1:end,5)/75;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
filename = 'Sample 3 Final 400 grams LONG CYCLE.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:E');
        time400_Long = CTTAsample2(1:end,3); 
         time400_Long_p = CTTAsample2(1:end,3)+0.04;
        p400_Long = CTTAsample2(1:end,4);
        Strain400_Long = -100*CTTAsample2(1:end,5)/35;

    
        
        
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


set(groot, 'DefaultTextInterpreter', 'LaTeX', ...
           'DefaultAxesTickLabelInterpreter', 'LaTeX', ...
           'DefaultAxesFontName', 'LaTeX', ...
           'DefaultLegendInterpreter', 'LaTeX', ...
           'defaultFigureColor','w');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
fig=figure; hold on; grid on; set(gca,'FontSize',20);

yyaxis right;
H1 = plot(time400_Short(10055-100:10055+1490+400)-time400_Short(10055-100),(Strain400_Short(10055-100:10055+1490+400)-Strain400_Short(10055-100)),':','LineWidth',1.5,'Color',[0.2,0,0.9]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Actuation Strain, $$\varepsilon$$ $$(^\%)$$')
set(gca,'ycolor',[0.2,0,0.9])
ylim([-0.2 17])
yyaxis left;
H2 =  plot(time400_Short_p(10025-100:11515+400)-time400_Short_p(10025-100),p400_Short(10025-100:11515+400),'Linewidth',1.5);% plot(time4003(1:(end)),p400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Pressure (psi)')

xlabel('Time (s)')
xlim([0 2])

ylim([0 253])

fig=figure; hold on; grid on; set(gca,'FontSize',20);

yyaxis right;
H1 = plot(time400_Long(1:(end)),(35/100)*(Strain400_Long(1:(end))-Strain400_Long(1)),':','LineWidth',1.5,'Color',[0.2,0,0.9]); %plot(time4003(1:(end)),-Strain400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Actuation Strain, $$\varepsilon$$ $$(^\%)$$')
set(gca,'ycolor',[0.2,0,0.9])
ylim([-0.2 50])
yyaxis left;
H2 =  plot(time400_Long_p(1:(end)),p400_Long(1:(end)),'Linewidth',1.5);% plot(time4003(1:(end)),p400_filt3(1:(end)),':','Linewidth',1.5)
ylabel('Pressure (psi)')

xlabel('Time (s)')
xlim([0 320])



% title('400 grams')
% legend('SAMPLE 1','SAMPLE 1','Location','Northwest')
grid on 


 