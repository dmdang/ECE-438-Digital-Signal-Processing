function [ y ] = stm( x )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = 0.3*x(1);
for i = 2:length(x)
    y(i) = 0.9*y(i - 1) + 0.3*x(i) + 0.24*x(i - 1);
end


end

