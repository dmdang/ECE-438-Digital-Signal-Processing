x = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0]; 
N = 10;
n = 0:1:N-1;
j = sqrt(-1);

subplot(4,1,1)
X = DFTsum(x);
stem(n, abs(X))
title('mag(DFTsum(δ(n)))')
xlabel('n')
ylabel('mag(DFT(δ(n)))')

subplot(4,1,2)
x = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
X = DFTsum(x);
stem(n, abs(X))
title('mag(DFTsum(1))')
xlabel('n')
ylabel('mag(DFT(1))')

subplot(4,1,3)
x = exp((j*2*pi*n)/10);
X = DFTsum(x);
stem(n, abs(X))
title('mag(DFTsum(e^((j*pi*2*n)/10)))')
xlabel('n')
ylabel('mag(DFT(exp))')

subplot(4,1,4)
x = cos((2*pi*n)/10);
X = DFTsum(x);
stem(n, abs(X))
title('mag(DFTsum(cos((2*pi*n)/10)))')
xlabel('n')
ylabel('mag(DFT(cos))')

