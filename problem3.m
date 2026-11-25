clc;
clear;
close all;

x=[1,2,3,4,5];
n=-2:2;

x_rev=fliplr(x);

x_even=(x+x_rev)/2;

x_odd=(x-x_rev)/2;

x_v=x_even+x_odd

figure;

subplot(2,2,1);

disp(x);
disp(x_even);
disp(x_odd);
disp(x_v);

stem(n,x);

subplot(2,2,2);
stem(n,x_even);
title("even");

subplot(2,2,3);
stem(n,x_odd);
title("odd");

subplot(2,2,4);
stem(n,x_v);
title("verify");


