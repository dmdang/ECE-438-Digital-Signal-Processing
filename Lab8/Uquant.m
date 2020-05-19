function [Y] = Uquant(X,N)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
maxX = max(X, [], 'all');
minX = min(X, [], 'all');

delta = (maxX - minX) / (N - 1);
sz = size(X);
Y = zeros(sz);

for i = 1:sz(1)
    for j = 1:sz(2)
        X(i,j) = (X(i,j) - minX) / delta;
        X(i,j) = round(X(i,j));
        Y(i,j) = (X(i,j) * delta) + minX;
    end
end

end

