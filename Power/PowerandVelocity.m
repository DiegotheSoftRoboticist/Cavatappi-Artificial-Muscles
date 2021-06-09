 
clear
clc
close all


 % Retrieve Data
 


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% title('400 grams')
% legend('SAMPLE 1','SAMPLE 1','Location','Northwest')
grid on 


 Mass = [ 0.100 0.200 0.300 0.400 0.500] %kg
 
Velocity = [ 0.353 0.292 0.205 0.137 0.0992] %m\s

Velocity_avg = [0.1989 0.1491 0.124 0.0721 0.0420]%m\s

SpecificPowerDynamic = [1.27 1.42 1.35 1.2 1]

SpecificPower_averageDynamic = [0.5 0.8 0.73 0.62 0.41]

SpecificPower = 10*(Mass.*Velocity)/0.5  %0.5 Weight of the actuator

SpecificPower_average = 10*(Mass.*Velocity_avg)/0.5  %0.5 Weight of the actuator

DataFig4D = [Mass;Velocity;Velocity_avg;SpecificPowerDynamic;SpecificPower_averageDynamic]';

fileName= 'Output1.xlsx';
   sheetName = 'Fig. 4D DATA';
   xlswrite(fileName,DataFig4D,sheetName);

set(groot, 'DefaultTextInterpreter', 'tex', ...
           'DefaultAxesTickLabelInterpreter', 'tex', ...
           'DefaultAxesFontName', 'tex', ...
           'DefaultLegendInterpreter', 'tex', ...
           'defaultFigureColor','w');

fig=figure('units','inch','position',[0,0,3.5,2.5]); hold on; grid on; set(gca,'FontSize',8);

yyaxis right;
H1 = plot(Mass,Velocity,'-','LineWidth',1,'Color',[0.5,0.5,0.5])
plot(Mass,Velocity_avg,'--','LineWidth',1,'Color',[0.5,0.5,0.5])
set(gca,'ycolor',[0.5,0.5,0.5])
ylabel('Velocity (m/s)')

yyaxis left;
H2 = plot(Mass,SpecificPowerDynamic,'-','LineWidth',1,'Color',[0 0 0])
plot(Mass,SpecificPower_averageDynamic,'--','LineWidth',1,'Color',[0 0 0])
set(gca,'ycolor',[0 0 0])
ylabel('Specific power (kW/kg)')

xlabel('Load  (kg)')

xlim([0.1 0.5])
ylim([0 1.55])

leg = legend('Peak power','Average power','Peak vel.','Average vel.','Location','southwest');
leg.ItemTokenSize = [11,20];

grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color 
print(gcf,'Power_Velocity.png','-dpng','-r700'); 

%  % Retrieve Data
%    
% 
%     filename = 'Power 100grams test2.xlsx';
%     sheet = 'Sheet1';
%     CTTAsample = xlsread(filename, sheet,'A:E');
%         time = CTTAsample(1:end,3);
%         p = CTTAsample(1:end,4);
%         v_100 = CTTAsample(1:end,5);
%         v_100  = -mean(v_100(1428:1437))
% 
%     filename = 'Power 200grams test 2.xlsx';
%     sheet = 'Sheet1';
%     CTTAsample = xlsread(filename, sheet,'A:E');
%         time = CTTAsample(1:end,3);
%         p = CTTAsample(1:end,4);
%         v_200 = CTTAsample(1:end,5);
%         v_200  = -mean(v_200(714:722))
% 
%          filename = 'Power 300grams test 1.xlsx';
%     sheet = 'Sheet1';
%     CTTAsample = xlsread(filename, sheet,'A:E');
%         time = CTTAsample(1:end,3);
%         p = CTTAsample(1:end,4);
%         v_300 = CTTAsample(1:end,5);
%          v_300  = -mean(v_300(775:783))
% 
% 
%   filename = 'Power 400grams test 2.xlsx';
%     sheet = 'Sheet1';
%     CTTAsample = xlsread(filename, sheet,'A:E');
%         time = CTTAsample(1:end,3);
%         p = CTTAsample(1:end,4);
%         v_400 = CTTAsample(1:end,5);
%          v_400  = -mean(v_400(560:567))
% 
%   filename = 'Power 500grams test 1.xlsx';
%     sheet = 'Sheet1';
%     CTTAsample = xlsread(filename, sheet,'A:E');
%         time = CTTAsample(1:end,3);
%         p = CTTAsample(1:end,4);
%         v_500 = CTTAsample(1:end,5);
%         v_500  = -mean(v_500(204:213))
% 
% 
% 
% fig=figure; hold on; grid on; set(gca,'FontSize',20);
% 
% yyaxis right;
% H1 = plot(time(1:(end)),-(v_300(1:(end))))
% % ylabel('Strain, $$\varepsilon$$ $$(^\%)$$')
% ylabel('Velocity, $$m/s$$')
% yyaxis left;
% H2 = plot(time(1:(end)),p(1:(end)))
% ylabel('Pressure (psi)')
% %4829
% xlabel('$Time (s)$')
% 
% legend('Pressure','Contraction','Location','Northwest')
% grid on 
