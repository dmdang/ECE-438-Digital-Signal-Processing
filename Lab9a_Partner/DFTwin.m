function X = DFTwin(x,L,m,N)
w = hamming(L);
x = x(1+m:m+L);
x = x.*w;
X = fft(x, N);