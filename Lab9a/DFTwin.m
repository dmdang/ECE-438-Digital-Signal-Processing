function [X] = DFTwin(x,L,m,N)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

w = hamming(L);
x = x(1+m:m+L);
x = x.*w;
X = fft(x, N);

end

