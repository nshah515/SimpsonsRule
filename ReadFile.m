%reads the file, and uses it in LSM and Simpsons, easier than pt 1
%declaring it every time

function matrix = ReadFile(filename)

fileID = fopen(filename,'r');
formatspec = '%f';
matrix = fscanf(fileID,formatspec);

end

