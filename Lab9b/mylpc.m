function [coef] = mylpc(x,P)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here

rhat = xcorr(x, P);
rhat = rhat(P+1:end);
rs = rhat(2:end);
Rs = toeplitz(rhat(1:P));
coef = rs/Rs;

end

