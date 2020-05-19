k = 7201:7400;
music_vector = audioread('music.au');
speech_vector = audioread('speech.au');

%sound(music_vector)
%sound(speech_vector)

mv = double(music_vector);
sv = double(speech_vector);

%{
subplot(4,1,1)
Y1 = Uquant(mv,2^7);
%sound(Y1)
plot(k,Y1(7201:7400))
title('Y = Uquant(musicVec,2^7)')
xlabel('indices 7201:7400')
ylabel('Y')
subplot(4,1,2)
Y1 = Uquant(mv,2^4);
%sound(Y1)
plot(k,Y1(7201:7400))
title('Y = Uquant(musicVec,2^4)')
xlabel('indices 7201:7400')
ylabel('Y')
subplot(4,1,3)
Y1 = Uquant(mv,2^2);
%sound(Y1)
plot(k,Y1(7201:7400))
title('Y = Uquant(musicVec,2^2)')
xlabel('indices 7201:7400')
ylabel('Y')
subplot(4,1,4)
Y1 = Uquant(mv,2^1);
%sound(Y1)
plot(k,Y1(7201:7400))
title('Y = Uquant(musicVec,2^1)')
xlabel('indices 7201:7400')
ylabel('Y')
%}

subplot(4,1,1)
Y2 = Uquant(sv,2^7);
%sound(Y2)
plot(k,Y2(7201:7400))
title('Y = Uquant(speechVec,2^7)')
xlabel('indices 7201:7400')
ylabel('Y')
subplot(4,1,2)
Y2 = Uquant(sv,2^4);
%sound(Y2)
plot(k,Y2(7201:7400))
title('Y = Uquant(speechVec,2^4)')
xlabel('indices 7201:7400')
ylabel('Y')
subplot(4,1,3)
Y2 = Uquant(sv,2^2);
%sound(Y2)
plot(k,Y2(7201:7400))
title('Y = Uquant(speechVec,2^2)')
xlabel('indices 7201:7400')
ylabel('Y')
subplot(4,1,4)
Y2 = Uquant(sv,2^1);
%sound(Y2)
plot(k,Y2(7201:7400))
title('Y = Uquant(speechVec,2^1)')
xlabel('indices 7201:7400')
ylabel('Y')

orient tall

