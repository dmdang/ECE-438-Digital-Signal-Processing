function [ X ] = DTFT( x, n0, dw )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

i = sqrt(-1);
N = length(x);
w = -pi:dw:pi;
X = zeros(length(w), 1);

for k = 1:length(w)
    for n = 1:N
        X(k) = X(k) + (x(n) * exp(-i*w(k)*(n+n0-1)));
    end
end

end

