N = 512;
n = 0:1:N-1;
x = cos((2*pi*n)/10);
fprintf("X = DFTsum(x)")
t = cputime; X = DFTsum(x);cputime-t

A = DFTmatrix(N);
x2 = transpose(x);
fprintf("X = A * x")
t = cputime; X2 = A * x2;cputime-t