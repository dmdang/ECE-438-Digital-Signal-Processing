function [ J ] = integ2( N )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here

x = linspace(0, 1, N+1);
x=x(1:N);
y = exp(x);
deltax = ((1) - 0) / N;
J = deltax * sum(y);

end

