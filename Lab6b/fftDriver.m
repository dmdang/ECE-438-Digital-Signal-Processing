N = 8;
k = 0:1:N-1;
j = sqrt(-1);

%{
subplot(3,1,1)
x = [1, 0, 0, 0, 0, 0, 0, 0];
X = FFT8(x);
stem(k, abs(X))
%}

%subplot(3,1,2)
x = ones(8, 1);
X = FFT8(x);
stem(k, X)
title('FFT8(x), x(n) = 1, N = 8')
xlabel('k')
ylabel('FFT8(x)')

%{
subplot(3,1,3)
x = exp((j*2*pi*n)/N);
X = FFT8(x);
stem(k, X)
%}