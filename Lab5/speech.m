load nspeech1
%sound(nspeech1)

subplot(4,1,1)
plot(nspeech1(100:200))
axis([0 101 -0.5 0.5])
title('nspeech1(100:200)')
xlabel('t')
ylabel('nspeech1')

[X, w] = DTFT(nspeech1(100:1100), 0);

subplot(4,1,2)
plot(w, abs(X))
axis([-pi pi 0 300])
title('DTFT(nspeech1(100:1100))')
xlabel('w')
ylabel('DTFT(nspeech1)')

[Xmax, Imax] = max(abs(X));

theta = w(Imax);
filtered = FIRfilter(nspeech1, theta);

subplot(4,1,3)
plot(filtered(100:200))
axis([0 101 -1e-3 6e-3])
title('FIRfilter(nspeech1, theta = -1.3254)')
xlabel('t')
ylabel('filter(nspeech1)')

sound(filtered)

subplot(4,1,4)
[X, w] = DTFT(filtered(100:1100), 0);
plot(w, abs(X))
axis([-pi pi 0 6])
title('DTFT(filtered(100:1100))')
xlabel('w')
ylabel('DTFT(filtered)')

