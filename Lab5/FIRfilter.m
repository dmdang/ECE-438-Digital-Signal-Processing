function [ y ] = FIRfilter( x, theta )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = x(1);
y(2) = x(2) - 2*cos(theta)*x(1);
y(3) = x(3) - 2*cos(theta)*x(2) + x(1);
for i = 4:length(x)
    y(i) = x(i) - 2*cos(theta)*x(i - 1) + x(i - 2);
end

end

