x = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0]; 
N = 10;
n = 0:1:N-1;
j = sqrt(-1);

subplot(3,1,1)
A = DFTmatrix(N);
x = transpose(x);
X = A * x;
stem(n, abs(X))
title('mag(DFT(A * x)), x = δ(n)')
xlabel('n')
ylabel('mag(DFT(A * x))')

subplot(3,1,2)
x = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
A = DFTmatrix(N);
x = transpose(x);
X = A * x;
stem(n, abs(X))
title('mag(DFT(A * x)), x = 1')
xlabel('n')
ylabel('mag(DFT(A * x))')

subplot(3,1,3)
x = exp((j*2*pi*n)/10);
A = DFTmatrix(N);
x = transpose(x);
X = A * x;
stem(n, abs(X))
title('mag(DFT(A * x)), x = exp((j*2*pi*n)/10))')
xlabel('n')
ylabel('mag(DFT(A * x))')

A = DFTmatrix(5)

