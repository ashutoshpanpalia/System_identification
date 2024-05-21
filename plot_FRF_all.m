% Clear workspace and command window
clear;
clc;

% Specify the directory containing the .lvm files
directory = 'C:\Users\mad lab\OneDrive - IIT Kanpur\Desktop\Robotic Arm\Robot Modal analysis\15May23';

% Get a list of all .lvm files in the directory
fileList = dir(fullfile(directory, '*.lvm'));

% Initialize arrays to store the file names and maximum values
fileNames = {};
force_max = [];
% Initialize color map
colors = lines(numel(fileList));
% Iterate over each .lvm file
for i = 1:numel(fileList)
    % Read the data from the current file
    data = dlmread(fullfile(directory, fileList(i).name));
    
    % Extract the maximum value from the 2nd column
    maxColumn2 = max(data(:, 2));
    
    time = data(:,1);%clip is the range where the date is relevant(5)
    force = data(:,2);%have to tweak it accordingly
    accln_1 = data(:,3);%but should be same for all
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
    %    H1 = X./F; % The quick way - may sometimes lead to errors
    %plot the results
    figure(4);
    loglog(f,abs(H1),'b','Linewidth',1.5);  hold on;
    xlabel('Frequency [Hz]');
    ylabel('X/F magnitude [m/N]');
    title('X/F magnitude vs Frequency');
    xlim([0 500]);
    xticks(0:25:500);
    figure(5);
    plot(f,real(H1),'b','Linewidth',1.5,'Color', colors(i, :));  hold on;
    xlabel('Frequency [Hz]');
    ylabel('X/F Real part [m/N]');
    xlim([0 250]);
    xticks(0:25:250);
    title('X/F Real part vs Frequency');

    % Store the file name and maximum value
    fileNames{end+1} = fileList(i).name;
    force_max(end+1) = maxColumn2;
end

% Add a legend with file names
legend({fileList.name});

% Adjust the plot layout
grid on;
hold off;