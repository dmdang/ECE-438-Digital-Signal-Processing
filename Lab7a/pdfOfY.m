m = 3;
x = 1:1000;
v = 9;
X = randn(1,1000);
Y = 3*X + 3;
pdfY = (1/(sqrt(2*pi)*sqrt(v))) * exp((-1/(2*v))*((Y - m).^2));
plot(Y, '.')
title('samples of Y')
xlabel('numbers 1 to 1000')
ylabel('Y = 3*randn(1,1000) + 3')
[m2, v2] = meanvar(Y)
