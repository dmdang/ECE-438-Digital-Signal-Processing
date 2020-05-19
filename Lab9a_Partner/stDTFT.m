data = audioread('go.au');
figure(1)
n = linspace(0,(length(data)-1)/8000, length(data));
plot(n,data)
title("'go' utterance")
xlabel('Time(s)')
ylabel("'go' utterance")
f = linspace(0, 8000, 512);
%f1 = (0:511)/512*8000;
X = DFTwin(data,405,2720,512);
%X = DFTsum(data,405,2720,512);
figure(2)
subplot(2,1,1)
n = linspace(0,405/8000, 406);
plot(n, data(2720:3125))
title("Chosen 'go' Segment")
xlabel('Time(s)')
ylabel("Chosen 'go' Segment")
subplot(2,1,2)
plot(f(f<=4000), abs(X(f<=4000)))
title('|X|')
xlabel('Frequency(Hz)')
ylabel('|X|')