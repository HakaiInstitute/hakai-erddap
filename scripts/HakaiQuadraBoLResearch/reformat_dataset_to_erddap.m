files = ls('*txt');

for ii = 1:length(files(:,1))
    
    % Read txt file
    file_name = strtrim(files(ii,:));
    
    %% File
    %Read data
    data = readtable(file_name,'PreserveVariableNames',true,'HeaderLines',6);
    
    % Read header
    [header_field,header_value] = textread(file_name,'%s%s',6,'delimiter',':');
    header_table = cell2table(header_value','VariableNames',header_field);
    
    % Parse File Name
    header_table.station = regexp(file_name,'^[a-zA-Z0-9]+','match');
    
    %% Apply header metadata to data
    new_dataset = [repmat(header_table,height(data),1),data];
    
    %Merge date and time
    if ismember('Date (yyyy-mm-dd)',new_dataset.Properties.VariableNames)
        new_dataset.date_time = new_dataset.('Date (yyyy-mm-dd)')+new_dataset.('time (hh:mm:ss)');
    elseif ismember('date and time in GMT (yyyy-mm-dd hh:mm:ss)',new_dataset.Properties.VariableNames)
        new_dataset.date_time = new_dataset.('date and time in GMT (yyyy-mm-dd hh:mm:ss)');
    end
    new_dataset.date_time.Format = 'uuuu-MM-dd''T''HH:mm:ss';
    if ismember('Longitude (deg W)',new_dataset.Properties.VariableNames)
        new_dataset.('Longitude (deg E)') = -new_dataset.('Longitude (deg W)');
    end
    
    %% Save to output File
    writetable(new_dataset,[file_name(1:end-4),'_reformated.csv']);
end