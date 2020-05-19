function [ y ] = averagevalue6( x )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = (0.4)*x(1);
for i = 2:length(x)
    y(i) = 0.6*(y(i - 1)) + 0.4*(x(i));
end

end

