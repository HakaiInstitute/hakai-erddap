% Read csv data
%Read header
inFile = '187F20180501_May2018_Oct2020.csv';
% 
% fid = fopen(inFile);
% h = textscan(fid,'%s',6,'delimiter','\n');
% fclose(fid)

% Read data
data = readtable(inFile,'PreserveVariableNames',1);

%% Combine date and time in a time variable
time = duration(data.('Time UTC'),'InputFormat','hh:mm');
data.time = data.Date+time;
data.time = datetime(data.time,'Format','yyyy-MM-dd''T''HH:mm:ss.SSSXXX','TimeZone','UTC');

%% Save back to csv format
fileOut = [inFile(1:end-4),'_transformed.csv'];

writetable(data,fileOut)