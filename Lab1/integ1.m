function [ I ] = integ1( N )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

x = linspace(0, (2*pi), N+1);
y = ((sin(7 .* x).^2));
deltax = ((2*pi) - 0) / N;
I = deltax * sum(y);

end

