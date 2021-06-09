  
clear
clc
close all


 % Retrieve Data Sample 1
    filename = 'Sample 3 Final 400 grams.xlsx';
    sheet = 'Sheet1';
    CTTAsample2 = xlsread(filename, sheet,'A:U');
        time400_025 = CTTAsample2(2:250,9);  
        velocity400_025 = CTTAsample2(2:250,15);
        Deltat = CTTAsample2(2:250,13);
        
        time4001_6sec = CTTAsample2(2:1538,9);  
        velocity4001_6sec = CTTAsample2(2:1538,15);
        Deltat4001_6sec = CTTAsample2(2:1538,13);
        
        
        
fig1 =figure; hold on; grid on; set(gca,'FontSize',20);

a = plot(time400_025,velocity400_025,'r','Linewidth',1.5)
b = plot(time4001_6sec,velocity4001_6sec,':k','Linewidth',1.5)
 
 xlabel('Time (s)')
 ylabel('Velocity (mm/s)')
 legend('0.25 sec','1.6 sec')

 
        
% Fs = 20;

Fs = 20;

N = length(time400_025);
k = 0:(N-1);
f = k*Fs/N;
 

% N5min = length(time400_5min);
% k5min = 0:(N5min-1);
% f5min = k5min*Fs/N5min;

F_nyq = Fs/2.5;
Fc = 1;

Fc_norm = Fc/F_nyq;
[b,a] = butter(6,Fc_norm,'low');

velocityfilter = filtfilt(b,a,velocity400_025);
velocityfilter4001_6sec = filtfilt(b,a,velocity4001_6sec);


 
 fig2 =figure; hold on; grid on; set(gca,'FontSize',20);

plot(time400_025,velocityfilter,'r','Linewidth',1.5);hold on;
plot(time4001_6sec,velocityfilter4001_6sec,':k','Linewidth',1.5);hold on;
 
 xlabel('Time (s)')
 ylabel('Velocity (mm/s)')
  legend('0.25 sec','1.6 sec')

 grid on
 % 1.6 sec 
 
 

 
for i = 1:length(velocityfilter4001_6sec)-1
DeltaVelocity4001_6sec(i) = velocityfilter4001_6sec(i+1)-velocityfilter4001_6sec(i);
end


Acceleration4001_6sec = DeltaVelocity4001_6sec./Deltat4001_6sec(1:length(DeltaVelocity4001_6sec))';


fig3 =figure; hold on; grid on; set(gca,'FontSize',20);

plot(time4001_6sec(1:length(DeltaVelocity4001_6sec)),Acceleration4001_6sec,'r','Linewidth',1.5);hold on;
 
 xlabel('Time (s)')
 ylabel('Acceleration (mm/s^2)')
  legend('0.25 sec','1.6 sec')

 grid on
 
 Acceleration4001_6secfilter = filtfilt(b,a,Acceleration4001_6sec);

velocityfilter4001_6sec = velocityfilter4001_6sec(1:length(Acceleration4001_6secfilter));

 specPower4001_6sec = ((0.4*(velocityfilter4001_6sec)/1000)'.*((Acceleration4001_6secfilter/1000)-10))/0.36;
 
 fig4 =figure; hold on; grid on; set(gca,'FontSize',20);

plot(time4001_6sec(1:length(DeltaVelocity4001_6sec)),specPower4001_6sec,'r','Linewidth',1.5);hold on;
 
 xlabel('Time (s)')
 ylabel('Specific Power (KJ/kg)')
  legend('1.6 sec')

 
 SpecificWork4001_6sec = trapz(time4001_6sec(1:length(DeltaVelocity4001_6sec)),specPower4001_6sec)
 
 
 % 0.25 seconds
for i = 1:length(velocityfilter)-1
Deltavelocityfilter(i) = velocityfilter(i+1)-velocityfilter(i);
end

Deltat = Deltat(1:length(Deltavelocityfilter));

Acceleration = Deltavelocityfilter./Deltat'

fig3 =figure; hold on; grid on; set(gca,'FontSize',20);

plot(time400_025(1:248),Acceleration,'r','Linewidth',1.5);hold on;
plot(time4001_6sec(1:length(DeltaVelocity4001_6sec)),Acceleration4001_6secfilter,':k','Linewidth',1.5);hold on; 
 xlabel('Time (s)')
 ylabel('Acceleration (mm/s^2)')
  legend('0.25 sec','1.6 sec')

 grid on
 
 Accelerationfilter = filtfilt(b,a,Acceleration);

 fig4 =figure; hold on; grid on; set(gca,'FontSize',20);

plot(time400_025(1:248),Accelerationfilter,'r','Linewidth',1.5);hold on;
 
 xlabel('Time (s)')
 ylabel('Acceleration')
 velocityfilter = velocityfilter(1:248);
 specPower = (0.4*(velocityfilter'/1000).*((Accelerationfilter/1000)-10))/0.36;
  legend('0.25 sec','1.6 sec')

 fig4 =figure; hold on; grid on; set(gca,'FontSize',20);

plot(time400_025(1:248),specPower,'r','Linewidth',1.5);hold on;
 
 xlabel('Time (s)')
 ylabel('Specific Power (KJ/kg)')
  legend('0.25 sec')

 SpecificWork = trapz(time400_025(1:248),specPower)
 
 
 
 
 
 