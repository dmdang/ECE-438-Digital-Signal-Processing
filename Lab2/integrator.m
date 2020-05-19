function [ y ] = integrator( x, T )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = x(1) * T;
for i = 2:length(x)
    y(i) = y(i - 1) + (x(i)*T);
end

end

