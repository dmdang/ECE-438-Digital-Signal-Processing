function [ y ] = averagevalue7( x )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = (1/3)*x(1);
y(2) = y(1) + (1/3)*x(2);
y(3) = y(2) + (1/3)*x(3);
for i = 4:length(x)
    y(i) = y(i - 1) + (1/3)*(x(i) - x(i - 3));
end

end

