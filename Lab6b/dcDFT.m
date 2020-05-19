function [X] = dcDFT(x)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

j = sqrt(-1);
N = length(x);
k = 0:(N/2 - 1);
x0 = x(1:2:N);
x1 = x(2:2:N);
X0 = DFTsum(x0);
X1 = DFTsum(x1);
Wkn = exp((-j*2*pi*k)/N);
X(1:(N/2)) = X0 + Wkn.*X1;
X((N/2)+1:N) = X0 - Wkn.*X1;


end

