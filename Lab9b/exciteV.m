function [x] = exciteV(N,Np)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

x = zeros(1, N);
for i=1:Np:N
    x(i) = 1;

end


