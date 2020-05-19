function [X] = FFT2(x)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here

N = length(x);
X = zeros(1, N);
X(1) = x(1) + x(2);
X(2) = x(1) - x(2);

end

