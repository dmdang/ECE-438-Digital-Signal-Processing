N = 20;
k = 0:N-1;
x = hamming(N);
X = DFTsum(x);

%{
subplot(2,1,1)
plot(k, abs(X))
title('|X20(k)|')
xlabel('k')
ylabel('|X20(k)|')
%}

%subplot(2,1,2)
[Xs, ws] = DTFTsamples(x);
plot(ws, abs(Xs))
title('mag(DTFTsamples(x))')
xlabel('w')
ylabel('mag(DTFT(x))')


