
clc;
clear;
close all;

% Generate sine wave
A = 1;
fm = 5;
t = 0:0.001:1;

x = A*sin(2*pi*fm*t);

% Uniform quantizer parameters
L = 8;
xmin = -1;
xmax = 1;

% Calculate step size
delta = (xmax-xmin)/L;

% Quantization
index = floor((x-xmin)/delta);

% Keep indices within valid range
index = max(0,min(L-1,index));

% Calculate quantized output
xq = xmin + (index+0.5)*delta;

% Plot input and quantized output
figure;

plot(t,x,'b','LineWidth',1.5);
hold on;
stairs(t,xq,'r','LineWidth',1.5);

title('Uniform Quantization');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend('Original Signal','Quantized Signal');
grid on;
