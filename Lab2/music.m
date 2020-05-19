audio_vector = audioread('music.au');
subplot(3,1,1)
plot(audio_vector)
title('music signal')
ylabel('audio vector')
xlabel('t')
%sound(audio_vector)

s1out = s1(audio_vector);
subplot(3,1,2)
plot(s1out)
title('s1(music signal)')
xlabel('t')
ylabel('s1')
%sound(s1out)

s2out = s2(audio_vector);
subplot(3,1,3)
plot(s2out)
title('s2(music signal)')
xlabel('t')
ylabel('s2')
%sound(s2out)