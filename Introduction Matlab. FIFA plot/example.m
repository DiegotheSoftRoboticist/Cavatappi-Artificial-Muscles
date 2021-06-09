
clear all
close all
clc

%INPUT: 
%R
%   Data, if R is a m*n matrix, means m samples with n options
%Label
%   Label, Label of options
%	Cells of string
%LineColor
%	Color of Line
%	Cells of MatLab colors
%
%FillColor
%	Cells of MatLab colors
%
%LineStyle
%	Cells of MatLab colors
%
%LevelNum
%	number of axis's levels
%
% Initialize data points

set(groot, 'DefaultTextInterpreter', 'tex', ...
           'DefaultAxesTickLabelInterpreter', 'tex', ...
           'DefaultAxesFontName', 'tex', ...
           'DefaultLegendInterpreter', 'tex', ...
           'defaultFigureColor','w');
close all
fig=figure('units','inch','position',[0,0,3.5,2]); hold on; grid on; set(gca,'FontSize',8);
Results = [57 51 80 100 56 85;...
    60 60 80 70 54 18.5;...
     82 63 40 99 99 5;...
    30 22 60 80 50 80;...
    100 100 100 100 100 100]

radarplot(Results,{'Ave. Specific Power (kW/kg)','Specific Work (kJ/kg)','Response Time',...
    'Max. Actuation Strain (%)','Max. Actuation Stress (MPa)','Total Efficiency (%)'}...
    ,{'c','b','m','k','w'},{'c','b','m','k','w'},1);
leg = legend('Cavatappi','PPAM','TPAs','Skeletal Muscles')
leg.ItemTokenSize = [8,20];

 grid on 
set(gca,'GridColor',[0.1 0.2 0.9]) % a bluish color 
print(gcf,'SpiderPlot.png','-dpng','-r700'); 

%{'-' '--' ':' '-.'},

% Results = [1.2*2.75 0.18*30 ((442)/6) 38.5*1.5 10*2.1 17*3.7;...
%     1*2.75 0.452*30 ((442)/6) 25*1.5 1.72*2.1 19.1*3.7;...
%      27*2.75 2.48*30 ((442)/16.5) 49*1.5 35*2.1 1*3.7;...
%     0.32*2.75 0.2*30 ((442)/9) 35*1.5 1.16*2.1 20*3.7]
% radarplot(Results,{'Specific Power (kW/kg)','Specific Work (kJ/kg)','Response Time','Max. Actuation Strain ($\%$)','Max. Actuation Stress (MPa)','Efficiency ($\%$)'}...
%     ,{'c','b','m','k'},{'c','b','m','k'},5)
% legend('Cavatappi','Mc. Kibben','TPAs','Skeletal Muscles')
