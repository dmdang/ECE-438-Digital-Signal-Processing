audio_vector = audioread('speech.au');
t = 0:1:2.5e4;
plot(audio_vector)
title('speech signal')
ylabel('audio vector')
xlabel('t')
sound(audio_vector)