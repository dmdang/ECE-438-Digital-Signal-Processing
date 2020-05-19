t = 0:1:300;
start = audioread('Start.wav');
plot(start)
title("'start' utterance")
xlabel('t')
ylabel("'start' utterance")
zoom xon

figure
VoicedSig = start(3700:4000);
UnvoicedSig = start(2500:2800);
subplot(2,1,1)
plot(t,VoicedSig)
title('VoicedSig')
xlabel('t')
ylabel('VoicedSig')
subplot(2,1,2)
plot(t,UnvoicedSig)
title('UnvoicedSig')
xlabel('t')
ylabel('UnvoicedSig')

L = 300;
VoicedSquared = VoicedSig .^ 2;
Pvoiced = (1/L)*sum(VoicedSquared)
UnvoicedSquared = UnvoicedSig .^ 2;
Punvoiced = (1/L)*sum(UnvoicedSquared)

zcVoice = zero_cross(VoicedSig)
zcUnvoice = zero_cross(UnvoicedSig)