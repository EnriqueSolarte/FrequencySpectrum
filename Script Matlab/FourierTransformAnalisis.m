clc
clear all

t = 0:1/50:10-1/50;
x = sin(2*pi*10.5*t) + sin(2*pi*15*t);

samples=length(x) ;
sampleTime=10;
sampleFrequency=samples/sampleTime;

plot(t,x)

y = fft(x);
m = abs(y);

f = (0:length(y)-1)/sampleTime;
figure
plot(f,m)
title('Magnitude')

