N = 8;
k = 0:1:N-1;
j = sqrt(-1);

subplot(3,1,1)
x = [1, 0, 0, 0, 0, 0, 0, 0];
X = fft_stage(x);
stem(k, abs(X))

subplot(3,1,2)
x = ones(8, 1);
X = fft_stage(x);
stem(k, X)

subplot(3,1,3)
x = exp((j*2*pi*k)/N);
X = fft_stage(x);
stem(k, X)