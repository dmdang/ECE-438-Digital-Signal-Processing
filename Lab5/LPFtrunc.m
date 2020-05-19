function [ h ] = LPFtrunc( N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

n = 0:N-1;
h = (2/pi)*sinc((2/pi)*(n - ((N-1)/2)));

end

