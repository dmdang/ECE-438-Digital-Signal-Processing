function [ y ] = s2( x )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = x(1);
for i = 2:length(x)
    y(i) = ((1/2)*y(i - 1)) + x(i);
end


end

