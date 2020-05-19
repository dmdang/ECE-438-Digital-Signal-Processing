X = randn(1,1000);
plot(X, '.')
[m, v] = meanvar(X)
title('samples of X')
xlabel('numbers 1 to 1000')
ylabel('randn(1,1000)')
