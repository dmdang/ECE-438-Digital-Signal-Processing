speech_vector = audioread('speech.au');
X = double(speech_vector);

subplot(4,1,1)
Y2 = Uquant(X,2^7);
E = Y2 - X;
hist(E,20)
title('E = Y - X, Y = Uquant(speechVec,2^7)')
xlabel('bins')
ylabel('frequency')
subplot(4,1,2)
Y2 = Uquant(X,2^4);
E = Y2 - X;
hist(E,20)
title('E = Y - X, Y = Uquant(speechVec,2^4)')
xlabel('bins')
ylabel('frequency')
subplot(4,1,3)
Y2 = Uquant(X,2^2);
E = Y2 - X;
hist(E,20)
title('E = Y - X, Y = Uquant(speechVec,2^2)')
xlabel('bins')
ylabel('frequency')
subplot(4,1,4)
Y2 = Uquant(X,2^1);
E = Y2 - X;
hist(E,20)
title('E = Y - X, Y = Uquant(speechVec,2^1)')
xlabel('bins')
ylabel('frequency')