% Selection of Exceld Data
clear all;
clc;
[FileName,PathName] = uigetfile('*.xls','Select the EXCEL file');
excelFile= strcat(PathName,  FileName);
y = xlsread(excelFile,'A:A');
clear FileName PathName excelFile

%% 

samples=length(y) %the vector has 1600 elements.


t=1/samples:1/samples:1;
figure
plot(t(1:0.5*samples),y(1:0.5*samples));
xlabel('time(s)')
ylabel('y')

%% 

Y=fft(y);
t1=1:1:0.5*samples; 
%t1=t1/2;   %   half samples rate
figure
plot(t1,abs(Y(1:0.5*samples)));    
xlabel('Hz') 
ylabel('Amplitude') % 
