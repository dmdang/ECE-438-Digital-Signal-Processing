function [ y ] = s3( x )
%UNTITLED13 Summary of this function goes here
%   Detailed explanation goes here

y = zeros;
y(1) = x(1);
for i = 2:length(x)
    y(i) = x(i) - ((1/2)*(x(i - 1)));
end

end

