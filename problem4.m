clc;
clear;
close all;

A=3;
Fm=4;

t=0:0.001:1;

x=A*sin(2*pi*Fm*t);

Fs_above=4*Fm;
Fs_below=1.2*Fm;
Fs_n=2*Fm;

Ts_above=0:1/Fs_above:1;
Xs_above=A*sin(2*pi*Fm*Ts_above);

Ts_below=0:1/Fs_below:1;
Xs_below=A*sin(2*pi*Fm*Ts_below);

Ts_n=0:1/Fs_n:1;
Xs_n=A*sin(2*pi*Fm*Ts_n);
figure;

subplot(3,1,1);
plot(t,x,'r');
hold on;
stem(Ts_above,Xs_above,'b','filled');
title("above");

subplot(3,1,2);
plot(t,x,'r');
hold on;
stem(Ts_below,Xs_below,'b','filled');
title("below");

subplot(3,1,3);
plot(t,x,'r');
hold on;
stem(Ts_n,Xs_n,'b','filled');
title("nyquist");


