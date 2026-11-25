clc;
clear;
close all;

x=[1,2,3,4];
n=1:4;
shift=2;
scale=2;
x1=x;
n1=n+shift;

x2=x*scale;
n2=n;

x3=fliplr(x);
n3=-fliplr(n);

subplot(2,2,1)
stem(n,x);
title("original signal");

subplot(2,2,2)
stem(n1,x1);
title("time shift");

subplot(2,2,3)
stem(n2,x2);
title("time scaling");

subplot(2,2,4)
stem(n3,x3);
title("time reverse");
