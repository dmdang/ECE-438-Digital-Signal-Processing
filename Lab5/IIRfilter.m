function [ y ] = IIRfilter( x, theta, r )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = x(1) - r*x(1);
y(2) = x(2) - r*x(2) + 2*r*cos(theta)*y(1);
y(3) = x(3) - r*x(3) + 2*r*cos(theta)*y(2) - (r^2)*y(1);
for i = 4:length(x)
    y(i) = x(i) - r*x(i) + 2*r*cos(theta)*y(i - 1) - (r^2)*y(i - 2);
end

end