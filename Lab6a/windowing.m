w = -2*pi:0.01:2*pi;
N = 20;
j = sqrt(-1);
W = exp((-j.*w.*(N-1))./2).*((sin(w.*(N./2)))./sin(w./2));
W(1) = N;

subplot(3,1,1)
plot(w, abs(W))
title('mag(W(e^jw))')
xlabel('w')
ylabel('mag(W(e^jw))')

subplot(3,1,2)
plot(w, angle(W))
title('phase(W(e^jw))')
xlabel('w')
ylabel('phase(W(e^jw))')

n = 0:1:N-1;
x = cos((pi/4)*n);
[X,w1] = DTFT(x, 512);

subplot(3,1,3)
plot(w1, abs(X))
title('mag(Xtr(e^jw))')
xlabel('w')
ylabel('mag(Xtr(e^jw))')