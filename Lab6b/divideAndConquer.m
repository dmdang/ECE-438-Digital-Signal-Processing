N = 10;
n = 0:1:N-1;
j = sqrt(-1);

subplot(3,1,1)
x = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0];
X = dcDFT(x);
stem(n, X)

subplot(3,1,2)
x = ones(10, 1);
X = dcDFT(x);
stem(n, X)

subplot(3,1,3)
x = exp((j*2*pi*n)/N);
X = dcDFT(x);
stem(n, X)