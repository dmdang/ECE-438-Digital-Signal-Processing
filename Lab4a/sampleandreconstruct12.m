f = -1:0.001:1;
Ts = 1;
fc = 0.45;
N = 20;

subplot(2,1,1)
mag1 = (1./(1 + (f./fc).^N)).^2;
plot(f, mag1)
title('(1./(1 + (f./fc).^N)).^2')
xlabel('f')
ylabel('mag(two lpf)')
axis([-1 1 0 2])

subplot(2,1,2)
mag2 = (1./(1 + (f./fc).^N)).^2 .* abs(sinc(f./(1)));
plot(f, mag2)
title('(1./(1 + (f./fc).^N)).^2 .* abs(sinc(f./(1)))')
xlabel('f')
ylabel('mag(system)')
axis([-1 1 0 2])