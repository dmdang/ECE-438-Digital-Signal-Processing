w = linspace(-pi,pi);
b = [0.3 0.24];
a = [1 -0.9];
h = freqz(b, a, w);

subplot(2,1,1)
plot(w, abs(h))
title('mag(H(w))')
xlabel('w')
ylabel('mag (dB)')
axis([-pi pi 0 6])

subplot(2,1,2)
plot(w, angle(h))
title('phase(H(w))')
xlabel('w')
ylabel('phase (deg)')
axis([-pi pi -2 2])

