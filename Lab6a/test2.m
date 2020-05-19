%w = -2*pi:0.01:2*pi;
N = 20;
j = sqrt(-1);
n = 0:1:N-1;
%W = exp((-j.*w.*(N-1))./2).*((sin(w.*(N./2)))./sin(w./2));
%W(1) = N;
window = 0.54-0.46*cos(2*pi*(n/N));
[W, w] = DTFT(window, 512);

subplot(3,1,1)
plot(w, abs(W))
title('mag(W(e^jw)), hamming window')
xlabel('w')
ylabel('mag(W(e^jw))')

subplot(3,1,2)
plot(w, angle(W))
title('phase(W(e^jw)), hamming window')
xlabel('w')
ylabel('phase(W(e^jw))')

n = 0:1:N-1;
x = cos((pi/4)*n);
window = 0.54-0.46*cos(2*pi*(n/N));
xtr = conv(window, x);
[XTR, w1] = DTFT(xtr, 512);

subplot(3,1,3)
plot(w1, abs(XTR))
title('mag(Xtr(e^jw)), hamming window')
xlabel('w')
ylabel('mag(Xtr(e^jw))')