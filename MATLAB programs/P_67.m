clc; clear; close all

% [AI-assited]
% Read lines as text strings first
textLines = readlines("0067_triangle.txt");
numRows = length(textLines);

% Pre-allocate a square matrix filled with NaNs or 0s
T = zeros(numRows, numRows); 

% Populate the matrix line by line
for i = 1:numRows
    rowVals = str2num(textLines(i));
    T(i, 1:length(rowVals)) = rowVals;
end


R = size(T,1);

for i = R-1:-1:1
    for j = 1:i
        a = T(i,j) + T(i+1,j);
        b = T(i,j) + T(i+1,j+1);
        T(i,j) = max([a b]);
    end
end

max_sum = T(1,1);