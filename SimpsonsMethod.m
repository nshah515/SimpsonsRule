clear all;

% read first fn as a string
filename = 'SimTest2.txt';
fileID = fopen(filename,'r');
f = fgets(fileID);
mat = fscanf(fileID,'%f');

% find h
a = mat(1,1);
b = mat(2,1);
subints = mat(3,1);
h = (b - a)/subints;
func = inline(f);

% populate the table and get sums for approx
table = populateSimpsons(a,b,h,subints,func);
[evensums,oddsums] = gSums(table,subints);

approx = sApprox(table,h,evensums,oddsums,subints);

% print the result
str = "The approximate value for the integral: %s from %d to %d with %d subintervals is %f\n";
fprintf(str,f,a,b,subints,approx);
