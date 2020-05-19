function [ y ] = averagevalue5( x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = (1/3)*x(1);
y(2) = (1/3)*(x(2) + x(1));
for i = 3:length(x)
    y(i) = (1/3)*(x(i) + x(i - 1) + x(i - 2));
end


end

