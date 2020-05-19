go = audioread('go.au');
subplot(3,1,1)
plot(go)
title("'go' utterance")
xlabel('t')
ylabel("'go' utterance")
subplot(3,1,2)
%plot(go(2200:2603))
plot(go(2590:2986));
title('voiced segment')
xlabel('t')
ylabel('voiced segment')
subplot(3,1,3)
X = DFTwin(go,396,2590,512);
w = 0:0.006135923153:pi;
plot(w,abs(X))
title('abs(DFTwin(go,396,2590,512))')
xlabel('w')
ylabel('abs(DFTwin(go))')

