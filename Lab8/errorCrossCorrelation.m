speech_vector = audioread('speech.au');
X = double(speech_vector);

subplot(4,1,1)
Y2 = Uquant(X,2^7);
E = Y2 - X;
[c,lags] = xcorr(E,Y2,200,'unbiased');
plot(lags,c)
title('cross-correlation E = Y - X, Y = Uquant(sv,2^7)')
xlabel('lags')
ylabel('c')
subplot(4,1,2)
Y2 = Uquant(X,2^4);
E = Y2 - X;
[c,lags] = xcorr(E,Y2,200,'unbiased');
plot(lags,c)
title('cross-correlation E = Y - X, Y = Uquant(sv,2^4)')
xlabel('lags')
ylabel('c')
subplot(4,1,3)
Y2 = Uquant(X,2^2);
E = Y2 - X;
[c,lags] = xcorr(E,Y2,200,'unbiased');
plot(lags,c)
title('cross-correlation E = Y - X, Y = Uquant(sv,2^2)')
xlabel('lags')
ylabel('c')
subplot(4,1,4)
Y2 = Uquant(X,2^1);
E = Y2 - X;
[c,lags] = xcorr(E,Y2,200,'unbiased');
plot(lags,c)
title('cross-correlation E = Y - X, Y = Uquant(sv,2^1)')
xlabel('lags')
ylabel('c')