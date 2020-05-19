x = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0]; 
N = 10;
n = 0:1:N-1;
j = sqrt(-1);

subplot(4,1,1)
X = DFTsum(x);
x = IDFTsum(X);
stem(n, abs(x))
title('mag(IDFT(DFT(δ(n))))')
xlabel('n')
ylabel('m(ID(D(δ(n))))')

subplot(4,1,2)
x = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1];
X = DFTsum(x);
x = IDFTsum(X);
stem(n, abs(x))
title('mag(IDFT(DFT(1)))')
xlabel('n')
ylabel('m(ID(D(1)))')

subplot(4,1,3)
x = exp((j*2*pi*n)/10);
X = DFTsum(x);
x = IDFTsum(X);
stem(n, abs(x))
title('mag(IDFT(DFT(e^((j*2*pi*n)/10))))')
xlabel('n')
ylabel('m(ID(D(exp)))')

subplot(4,1,4)
x = cos((2*pi*n)/10);
X = DFTsum(x);
x = IDFTsum(X);
stem(n, abs(x))
title('mag(IDFT(DFT(cos((2*pi*n)/10))))')
xlabel('n')
ylabel('m(ID(D(cos)))')
