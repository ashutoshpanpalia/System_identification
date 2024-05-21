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

% Iterate over each .lvm file
for i = 1:numel(fileList)
    % Read the data from the current file
    data = dlmread(fullfile(directory, fileList(i).name));
    
    % Extract the maximum value from the 2nd column
    maxColumn2 = max(data(:, 2));
    
    time = data(:,1);%clip is the range where the date is relevant(5)
    force = data(:,2);%have to tweak it accordingly
    accln_1 = data(:,3);%but should be same for all

    % Store the file name and maximum value
    fileNames{end+1} = fileList(i).name;
    force_max(end+1) = maxColumn2;
end
