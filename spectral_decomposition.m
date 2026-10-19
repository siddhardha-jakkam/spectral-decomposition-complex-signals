
%SPECTRAL DECOMPOSITION AND ANALYSIS OF COMPLEX SIGNALS
clc; 
close all; 
clear; 
 
%construction 
% Parameters 
F1= 10; 
F2=20; 
F3=30; 
A1= 10; 
A2=5; 
A3=20; 
fs = 1000;            
 
Ts = 1/fs;            
t = -1:Ts:1;          
 
% Signals generation 
X1=A1*exp(1i*2*pi*F1*t); 
X2=A2*exp(1i*2*pi*F2*t); 
X3=A3*exp(1i*2*pi*F3*t); 
 
x=X1 + X2 +X3; 
 
% Signal components 
x_real = real(x); 
x_imaginary = imag(x); 
x_mag = abs(x); 
X_phase = angle(x); 
 
% Plotting 
figure; 
 
subplot(3,3,1) 
plot(t,x_real); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
title('Real Part'); 
grid on; 
 
subplot(3,3,2) 
plot(t,x_imaginary); 
xlabel('Time (s)'); 
ylabel('Amplitude'); 
title('Imaginary Part'); 
grid on; 
 
subplot(3,3,3) 
plot(t,x_mag); 
xlabel('Time (s)'); 
ylabel('Magnitude'); 
title('Magnitude'); 
grid on; 
 
subplot(3,3,4) 
plot(t,X_phase); 
xlabel('Time (s)'); 
ylabel('Phase (rad)'); 
title('Phase'); 
grid on; 

%applying fft 

n = length(x); 
 
df = fs/n; 
f = (0:n-1)*df; 
 
y = fft(x); 
y_mag=abs(y)/n; 

subplot(3,3,5) 
stem(f,y_mag); 
xlabel('Frequency (Hz)'); 
ylabel('Magnitude'); 
title('FFT Magnitude Spectrum'); 
grid on; 
xlim([0 35]); 

% shifting to -ve  

y_shift=fftshift(y); 
y_shift_mag=abs(y_shift)/n; 
f_shift = (-floor(n/2):ceil(n/2)-1)*df; 
 
subplot(3,3,6) 
stem(f_shift,y_shift_mag); 
xlabel('Frequency (Hz)'); 
ylabel('Magnitude'); 
title('FFT Magnitude Spectrum'); 
grid on; 
xlim([-35 35]); 
 
%to find phase of shifted fft 

y_shift_phase=angle(y_shift); 
 
subplot(3,3,7) 
stem(f_shift, y_shift_phase); 
xlabel('Frequency (Hz)'); 
ylabel('Phase (rad)'); 
title('FFT Phase Spectrum'); 
grid on; 
xlim([-35 35]); 
 
% Calculate PSD using Welch method 

[pxx, f_psd] = pwelch(x, [], [], [], fs, 'centered'); 
 
subplot(3,3,8) 
plot(f_psd, pxx); 
grid on; 
 
xlabel('Frequency (Hz)'); 
ylabel('Power/Frequency (w/Hz)'); 
title('Power Spectral Density of Signal'); 
xlim([-35 35]); 
 
% Find dominant frequency components 

[peaks, locations] = findpeaks(y_mag, f, ... 
    'MinPeakHeight', 0.5, ... 
    'MinPeakDistance', 5); 
 
% Display dominant frequencies 

disp('Dominant Frequencies (Hz):'); 
disp(locations); 

% Display magnitude of dominant frequencies

disp('Magnitude of Dominant Frequencies:'); 
disp(peaks); 
 
% Plot dominant frequencies 

subplot(3,3,9) 
stem(f, y_mag); 
hold on; 
plot(locations, peaks, 'ro', 'MarkerSize', 8); 
xlabel('Frequency (Hz)'); 
ylabel('Magnitude'); 
title('Dominant Frequency Components'); 
grid on; 
xlim([0 35]); 
hold off;

% thanks

