function [X,w] = DTFTsamples(x)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
N = length(x);
k = 0:N-1;
w = (2*pi*k)/N;
w(w>=pi) = w(w>=pi)-2*pi;

X = DFTsum(x);

X = fftshift(X);
w = fftshift(w);


end

