load nspeech2
%sound(nspeech2)

subplot(4,1,1)
N = 21;
[X1,w1] = DTFT(LPFtrunc(N),512);
plot(w1,(abs(X1)))
axis([-pi pi 0 1.25])
title('DTFT(LPFtrunc(N)), N = 21, not in decibels')
xlabel('w')
ylabel('DTFT(filter)')

subplot(4,1,2)
N = 101;
[X1,w1] = DTFT(LPFtrunc(N),512);
plot(w1,(abs(X1)))
axis([-pi pi 0 1.25])
title('DTFT(LPFtrunc(N)), N = 101, not in decibels')
xlabel('w')
ylabel('DTFT(filter)')

subplot(4,1,3)
N = 21;
[X1,w1] = DTFT(LPFtrunc(N),512);
plot(w1, 20*log10(abs(X1)))
axis([-pi pi -80 10])
title('DTFT(LPFtrunc(N)), N = 21, in decibels')
xlabel('w')
ylabel('DTFT(filtered)')

subplot(4,1,4)
N = 101;
[X2,w2] = DTFT(LPFtrunc(N),512);
plot(w2, 20*log10(abs(X2)))
axis([-pi pi -100 10])
title('DTFT(LPFtrunc(N)), N = 101, in decibels')
xlabel('w')
ylabel('DTFT(filtered)')

N = 21;
filtered1 = conv(nspeech2, LPFtrunc(N));
filtered1 = 3*filtered1;
%sound(filtered1)

N = 101;
filtered2 = conv(nspeech2, LPFtrunc(N));
filtered2 = 3*filtered2;
sound(filtered2)