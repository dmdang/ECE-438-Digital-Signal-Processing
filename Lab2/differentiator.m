function [ y ] = differentiator( x, T )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = x(1) / T;
for i = 2:length(x)
    y(i) = (x(i) - x(i - 1)) / T;
end

end

