subplot(2,1,1)
N = 50;
n = 0:1:N-1;
x = sin(0.1*pi*n);
[X, w] = DTFTsamples(x);
plot(w, abs(X))
title('mag(DTFTsamples(x)), N = 50')
xlabel('w')
ylabel('mag(DTFT(x))')

subplot(2,1,2)
N = 200;
n = 0:1:N-1;
x = sin(0.1*pi*n);
[X, w] = DTFTsamples(x);
plot(w, abs(X))
title('mag(DTFTsamples(x)), N = 200')
xlabel('w')
ylabel('mag(DTFT(x))')
axis([-4 4 0 110])


