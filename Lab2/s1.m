function [ y ] = s1( x )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = x(1);
for i = 2:length(x)
    y(i) = x(i) - x(i - 1);
end

end

