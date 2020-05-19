speech_vector = audioread('speech.au');
X = double(speech_vector);

Y2 = Uquant(X,2^7);
E = Y2 - X;
Y3 = Y2 .^ 2;
E2 = E .^ 2;
Py = (1/length(Y3))*sum(Y3);
Pe = (1/length(E2))*sum(E2);
PSNR7bs = Py / Pe

Y2 = Uquant(X,2^4);
E = Y2 - X;
Y3 = Y2 .^ 2;
E2 = E .^ 2;
Py = (1/length(Y3))*sum(Y3);
Pe = (1/length(E2))*sum(E2);
PSNR4bs = Py / Pe

Y2 = Uquant(X,2^2);
E = Y2 - X;
Y3 = Y2 .^ 2;
E2 = E .^ 2;
Py = (1/length(Y3))*sum(Y3);
Pe = (1/length(E2))*sum(E2);
PSNR2bs = Py / Pe

Y2 = Uquant(X,2^1);
E = Y2 - X;
Y3 = Y2 .^ 2;
E2 = E .^ 2;
Py = (1/length(Y3))*sum(Y3);
Pe = (1/length(E2))*sum(E2);
PSNR1bs = Py / Pe

Y2 = Uquant(X,2^6);
E = Y2 - X;
Y3 = Y2 .^ 2;
E2 = E .^ 2;
Py = (1/length(Y3))*sum(Y3);
Pe = (1/length(E2))*sum(E2);
PSNR6bs = Py / Pe;

Y2 = Uquant(X,2^5);
E = Y2 - X;
Y3 = Y2 .^ 2;
E2 = E .^ 2;
Py = (1/length(Y3))*sum(Y3);
Pe = (1/length(E2))*sum(E2);
PSNR5bs = Py / Pe;

Y2 = Uquant(X,2^3);
E = Y2 - X;
Y3 = Y2 .^ 2;
E2 = E .^ 2;
Py = (1/length(Y3))*sum(Y3);
Pe = (1/length(E2))*sum(E2);
PSNR3bs = Py / Pe;

PSNR = [PSNR7bs, PSNR6bs, PSNR5bs, PSNR4bs, PSNR3bs, PSNR2bs, PSNR1bs];
br = [56, 48, 40, 32, 24, 16, 8];
plot(br, 1./PSNR)
title('rate-distortion curve')
xlabel('bit rate (kbps)')
ylabel('PSNR')
