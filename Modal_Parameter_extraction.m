clc; clear all;
% Load the time domain input-output files provided to you
data = load('Trial_7.lvm'); % Load the time domain input-output files provided to you
% The file given to you is organized as:
% 1st column - time;
% 2nd column - force (input);
% 3rd column: acceleration (output);
% Assign them in above order


time = data(:,1);%clip is the range where the date is relevant(5)
force = data(:,2);%have to tweak it accordingly
accln_1 = data(:,3);%but should be same for all

figure(1)
plot(time,force,'r') % plot force in red color
xlabel('Time (s)') % add x-axis label
ylabel('Force (N)') % add y-axis label
title('Force vs Time') % update graph title

figure(2)
plot(time,accln_1,'g') % plot acceleration in blue color
xlabel('Time (s)') % add x-axis label
ylabel('Acceleration (G)') % add y-axis label
title('Acceleration vs Time') % update graph title


% Lenght of signal
L = length(time);
% Sampling Freq
dt = time(2) - time(1);
Fs = 1/dt;
 
% Define a freq. vector
f = Fs/2*linspace(0,1,(L/2+1)); % in Hz
w = (f*2*pi)'; % in rad/sec
%Take the Fourier transform using fft
A = accln_1;
A = fft(A,L);
A = A(1:length(A)/2+1); % retain only the single sided spectrum
F = force;
F = fft(F,L);
F = F(1:length(F)/2+1); % retain only the single sided spectrum
%Convert Accln to Disp
X = A./(-w.^2);
%Calculate FRF
Sxx = conj(X).*X; % autopower output
Sff = conj(F).*F; % autopower output
Sxf = conj(X).*F; % crosspower
Sfx = conj(F).*X; % crosspower

H1 = Sxf./Sff; % The correct way
% H1 = X./F; % The quick way - may sometimes lead to errors
% Coherence
Coh = (abs(Sxf.*Sxf))./(abs(Sff).*abs(Sxx));
%plot the results
figure(4);
loglog(f,abs(H1),'b','Linewidth',1.5);  hold on;
xlabel('Frequency [Hz]');
ylabel('X/F magnitude [m/N]');
title('X/F magnitude vs Frequency');
xlim([0 500]);
xticks(0:25:500);
figure(5);
plot(f,real(H1),'b','Linewidth',1.5);  hold on;
xlabel('Frequency [Hz]');
ylabel('X/F Real part [m/N]');
xlim([0 250]);
xticks(0:25:250);
title('X/F Real part vs Frequency');
