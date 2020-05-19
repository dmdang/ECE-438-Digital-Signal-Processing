start_vector=audioread('Start.wav');
figure(1)
n = linspace(0,(length(start_vector)-1)/8000, length(start_vector));
plot(n, start_vector)
title("Speech Signal")
xlabel('Time(s)')
ylabel('Speech Signal')
zoom xon
VoicedSig = start_vector(3600:3899);
UnvoicedSig = start_vector(2400:2699);
figure(2)
subplot(2,1,1)
n = linspace(0,(length(VoicedSig)-1)/8000, length(VoicedSig));
plot(n, VoicedSig) % T from sample 50 till sample 115: 65 * 0.125 * 10^(-3) = 8.125 * 10^(-3)s = 8.125 ms => male voice
title("Voiced Signal")
xlabel('Time(s)')
ylabel('Voiced Signal')
subplot(2,1,2)
n = linspace(0,(length(UnvoicedSig)-1)/8000, length(UnvoicedSig));
plot(n, UnvoicedSig)
title("Unvoiced Signal")
xlabel('Time(s)')
ylabel('Unvoiced Signal')
vpow = 0;
for n=1:300
    vpow = vpow + VoicedSig(n)^2; 
end
vpow = vpow/300;
upow = 0;
for n=1:300
    upow = upow + UnvoicedSig(n)^2;
end
upow = upow/300;
zcdV = zero_cross(VoicedSig);
zcdU = zero_cross(UnvoicedSig);