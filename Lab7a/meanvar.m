function [m, v] = meanvar(X)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

N = length(X);
m = sum(X) / N;
T = zeros;

for i = 1:N
    T(i) = (X(i) - m)^2;
end

v = (1/(N-1))*(sum(T));



end

