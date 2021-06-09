 
clear
clc
close all


 % Retrieve Data
    filename = 'Clean DATA Life Time.xlsx';
    sheet = 'Sheet1';
    CTTAsample = xlsread(filename, sheet,'A:K');
        time1 = CTTAsample(1:end,1);
        p1 = CTTAsample(1:end,2);
        disp1 = CTTAsample(1:end,3);

        time2 = CTTAsample(1:end,5);
        p2 = CTTAsample(1:end,6);
        disp2 = CTTAsample(1:end,7);

        time3 = CTTAsample(1:end,9);
        p3 = CTTAsample(1:end,10);
        disp3 = CTTAsample(1:end,11);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

p1clean = p1(1:find(isnan(p1),1,'first')-1);
p2clean = p2(1:find(isnan(p2),1,'first')-1);
p3clean = p3(1:find(isnan(p3),1,'first')-1);

time1clean = time1(1:find(isnan(time1),1,'first')-1);
time2clean = time2(1:find(isnan(time2),1,'first')-1);
time3clean = time3(1:find(isnan(time3),1,'first')-1);

disp1clean = disp1(1:find(isnan(disp1),1,'first')-1);
disp2clean = disp2(1:find(isnan(disp2),1,'first')-1); 
disp3clean = disp3(1:find(isnan(disp3),1,'first')-1);

time = [time1clean;time2;time3clean]
disp = [disp1clean;disp2;disp3clean]
p = [p1clean;p2;p3clean]

Strain = 100*disp/50;

% 
Fs = 20;

N = length(p);
k = 0:(N-1);
f = k*Fs/N;


F_nyq = Fs/2.5;
Fc = 1;

Fc_norm = Fc/F_nyq;
[b,a] = butter(6,Fc_norm,'low');

p_filt= filtfilt(b,a,p);
Strain_filt = filtfilt(b,a,Strain);

set(groot, 'DefaultTextInterpreter', 'LaTeX', ...
           'DefaultAxesTickLabelInterpreter', 'LaTeX', ...
           'DefaultAxesFontName', 'LaTeX', ...
           'DefaultLegendInterpreter', 'LaTeX', ...
           'defaultFigureColor','w');

       
       %Correcting the Strain
       
       Strain(38905:end)= Strain(38905:end)+ Strain(38904);
     
   
     

    
     
     
fig=figure; hold on; grid on; set(gca,'FontSize',20);

yyaxis right;
H1 = plot(time(1:(end)),(disp(1:(end))))
% ylabel('Strain, $$\varepsilon$$ $$(^\%)$$')
ylabel('Displacement, $$(mm)$$')

yyaxis left;
H2 = plot(time(1:(end)),p(1:(end)))
ylabel('Pressure (psi)')
%4829
xlabel('$Time (s)$')

title('200 grams')
legend('Pressure','Contraction','Location','Northwest')
grid on 


% fig=figure; hold on; grid on; set(gca,'FontSize',20);
% 
% yyaxis right;
% H1 = plot(time(12940:(13210)),-(Strain_filt(12940:(13210))-Strain_filt(12940)))
% ylabel('Strain, $$\varepsilon$$ $$(^\%)$$')
% 
% yyaxis left;
% H2 = plot(time(12940:(13210)),p_filt(12940:(13210)))
% ylabel('Pressure (psi)')
% %4829
% xlabel('$Time (s)$')
% 
% title('200 grams')
% legend('Pressure','Contraction','Location','Northwest')
% grid on 

