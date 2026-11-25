clc;
clear;
close all;
n=-10:10;
w=0.2;
A=2;
x1=A*sin(pi*w*n);
x2=A*cos(pi*w*n);
x3=(n>=0);
x4=(n==0);
x5=n.*(n>=0);

figure;

subplot(3,2,1);
stem(n,x1);
title("Sine wave");
xlabel("time");
ylabel("amplitude");
grid on;

subplot(3,2,2);
stem(n,x2);
title('Cosine Signal');
xlabel('time');
ylabel('Amplitude');
grid on;

subplot(3,2,3);
stem(n,x3);
title('Unit Step Signal');
xlabel('time');
ylabel('Amplitude');
grid on;

subplot(3,2,4);
stem(n,x4);
title('Unit Impulse Signal');
xlabel('time');
ylabel('Amplitude');
grid on;

subplot(3,2,5);
stem(n,x5);
title('Ramp Signal');
xlabel('time');
ylabel('Amplitude');
grid on;