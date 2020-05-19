load pcm
%sound(pcm)

subplot(4,1,1)
plot(pcm(100:200))
axis([0 101 -0.1 0.1])
title('pcm(100:200)')
xlabel('t')
ylabel('pcm')

[X, w] = DTFT(pcm(100:1100), 0);

subplot(4,1,2)
plot(w, abs(X))
axis([-pi pi 0 25])
title('DTFT(pcm(100:1100))')
xlabel('w')
ylabel('DTFT(pcm)')

[Xmax, Imax] = max(abs(X));

theta = w(Imax);
r = 0.995;
filtered = IIRfilter(pcm, theta, r);

subplot(4,1,3)
plot(filtered(100:200))
axis([0 101 -0.2 0.2])
title('IIRfilter(pcm, theta = -2.4728, r = 0.995)')
xlabel('t')
ylabel('filter(pcm)')

sound(filtered)

subplot(4,1,4)
[X, w] = DTFT(filtered(100:1100), 0);
plot(w, abs(X))
axis([theta-0.02 theta+0.02 0 20])
title('DTFT(filtered(100:1100))')
xlabel('w')
ylabel('DTFT(filtered)')