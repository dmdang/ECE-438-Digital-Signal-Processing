function [y] = filt(x)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = x(1);
y(2) = x(2) - x(1);
for i = 3:length(x)
    y(i) = x(i) - x(i - 1) + x(i - 2);
end

end

