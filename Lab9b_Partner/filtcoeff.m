load coeff.mat;
x = exciteV(40/0.125, 8/0.125);
n = linspace(0, 40, 40/0.125);
s1 = filter(1, [1 -A1], x);
s2 = filter(1, [1 -A2], x);
s3 = filter(1, [1 -A3], x);
figure(1)
subplot(3,1,1)
plot(n, s1)
title('Voiced Speech Segment for A1')
xlabel('Time (ms)')
ylabel('Voiced Signal')
subplot(3,1,2)
plot(n, s2)
title('Voiced Speech Segment for A2')
xlabel('Time (ms)')
ylabel('Voiced Signal')
subplot(3,1,3)
plot(n, s3)
title('Voiced Speech Segment for A3')
xlabel('Time (ms)')
ylabel('Voiced Signal')
[H1, W1] = freqz(1, [1 -A1], 512);
[H2, W2] = freqz(1, [1 -A2], 512);
[H3, W3] = freqz(1, [1 -A3], 512);
scaler = ((8000)/(2*pi));
figure(2)
subplot(3,1,1)
plot(W1*scaler, abs(H1))
title('Frequency Response for A1')
xlabel('Frequency (Hz)')
ylabel('|H (Hz)|')
subplot(3,1,2)
plot(W2*scaler, abs(H2))
title('Frequency Response for A2')
xlabel('Frequency (Hz)')
ylabel('|H (Hz)|')
subplot(3,1,3)
plot(W3*scaler, abs(H3))
title('Frequency Response for A3')
xlabel('Frequency (Hz)')
ylabel('|H (Hz)|')
x1 = exciteV(1500/0.125, 8/0.125);
n1 = linspace(0, 1500, 1500/0.125);
s11 = filter(1, [1 -A1], x1);
s12 = filter(1, [1 -A2], x1);
s13 = filter(1, [1 -A3], x1);
%soundsc(s11);
%soundsc(s12);
%soundsc(s13);