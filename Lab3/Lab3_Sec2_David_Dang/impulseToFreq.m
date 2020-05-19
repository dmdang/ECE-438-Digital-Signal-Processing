n = -4:1:10;
impulse = [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; % should be 15-20 points
stmOut = stm(impulse);

subplot(3,1,1)
stem(n, stmOut)
title('impulse response')
xlabel('n')
ylabel('system(impulse)')

subplot(3,1,2)
w = -pi:0.1:pi;
h = DTFT(stmOut, -4, 0.1);
plot(w, abs(h))
title('mag(H(w))')
xlabel('w')
ylabel('mag (dB)')

subplot(3,1,3)
w = -pi:0.1:pi;
plot(w, angle(h))
title('phase(H(w))')
xlabel('w')
ylabel('phase (deg)')
