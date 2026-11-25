
clc;
clear;
close all;

% Generate original sine wave
A = 1;
fm = 5;
t = 0:0.001:1;

x = A*sin(2*pi*fm*t);

% Uniform quantizer parameters
L = 8;
xmin = -1;
xmax = 1;

% Calculate quantization step size
delta = (xmax-xmin)/L;

% Find quantization intervals
index = floor((x-xmin)/delta);

% Keep indices within valid range
index = max(0,min(L-1,index));

% Generate quantized signal
xq = xmin + (index+0.5)*delta;

% Calculate quantization error
e = x-xq;

% Calculate Mean Squared Error
MSE = mean(e.^2);

% Display results
disp('Quantization Step Size:');
disp(delta);

disp('Mean Squared Error:');
disp(MSE);

% Plot results
figure;

% Original vs Quantized Signal
subplot(3,1,1);
plot(t,x,'b','LineWidth',1.5);
hold on;
stairs(t,xq,'r','LineWidth',1.5);
title('Original vs Quantized Signal');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend('Original Signal','Quantized Signal');
grid on;

% Quantization Error
subplot(3,1,2);
plot(t,e,'m');
title('Quantization Error');
xlabel('Time (seconds)');
ylabel('Error');
grid on;

% Squared Error
subplot(3,1,3);
plot(t,e.^2,'k');
title('Squared Quantization Error');
xlabel('Time (seconds)');
ylabel('Squared Error');
grid on;
