function Y = medianFilter(X)
[rows, cols] = size(X);
Y = zeros(rows, cols);
for a = 2:(rows-1)
    for b = 2:(cols-1)
        temp = X((a-1:a+1), (b-1:b+1));
        Y(a, b) = median(median(temp));
    end
end