% Selection of Exceld Data
clear all;
clc;
[FileName,PathName] = uigetfile('*.xls','Select the EXCEL file');
excelFile= strcat(PathName,  FileName);
y = xlsread(excelFile,'A:A');
clear FileName PathName excelFile

%% 
% t1=0:1/500:2.5-1/500;
% y=cos(2*pi*30*t1);
samples=length(y) ;
sampleTime=1;
sampleFrequency=samples/sampleTime;

t=0:1/sampleFrequency:sampleTime-1/sampleFrequency;
figure
zoomIn=0.5;
plot(t(1:zoomIn*samples),y(1:zoomIn*samples));
xlabel('time(s)')
ylabel('y')

%% 

Y=fft(y);
f=(0:samples-1)*sampleFrequency/length(Y); 
figure
plot(f,abs(Y));    
xlabel('Hz') 
ylabel('Amplitude') 
