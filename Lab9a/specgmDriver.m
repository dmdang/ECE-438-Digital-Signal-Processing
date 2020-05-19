load signal.mat;
siggy = transpose(signal);
figure(1)
n = linspace(0,(length(signal)-1)/8000, length(signal));
subplot(1,3,1)
plot(n, signal)
title('Original Signal')
xlabel('Time(s)')
subplot(1,3,2)
A1 = Specgm(siggy, 40, 20, 512);
title('Wideband Spectogram')
xlabel('Time(s)')
ylabel('Frequency (Hz)')
subplot(1,3,3)
A2 = Specgm(siggy, 320, 60, 512);
title('Narrowband Spectogram')
xlabel('Time(s)')
ylabel('Frequency (Hz)')