audio_vector = audioread('music.au');
%sound(audio_vector)

sig1 = audio_vector(1:2:end);

subplot(2,1,1)
plot(sig1)
title('sig1')
xlabel('t')
ylabel('sig1')
%sound(sig1)

h = fir1(20, [1/2]);
filterOut = conv(audio_vector, h);
sig2 = filterOut(1:2:end);
%sound(sig2)

subplot(2,1,2)
plot(sig2)
title('sig2')
xlabel('t')
ylabel('sig2')
