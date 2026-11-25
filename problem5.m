clc;
clear;
close all;

A=3;
Fm=4;

t=0:0.001:1;

x=A*sin(2*pi*Fm*t);

Fs_above=16;
Fs_below=6;


Ts_above=0:1/Fs_above:1;
Xs_above=A*sin(2*pi*Fm*Ts_above);

Ts_below=0:1/Fs_below:1;
Xs_below=A*sin(2*pi*Fm*Ts_below);

fa=abs(Fm-Fs_below);

xa=A*sin(2*pi*fa*t);

figure;

subplot(3,1,1);
plot(t,x,'r');
title("original")

subplot(3,1,2);
plot(t,x,'r');
hold on;
stem(Ts_above,Xs_above,'b','filled');
title("above");

subplot(3,1,3);
title("below");
plot(t,x,'r');
hold on;
stem(Ts_below,Xs_below,'b','filled');
plot(t,xa,'g--');