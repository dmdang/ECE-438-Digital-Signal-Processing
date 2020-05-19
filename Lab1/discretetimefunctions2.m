w = pi/4;

subplot(3,1,1)
n = -1:1:10;
u1 = (n>=0);
a = 0.8;
fxn = cos(w.*n) .* (a.^n).*u1;
stem(n, fxn)
title('cos(w*n)*(a^n)*u[n], a = 0.8')
xlabel('n')
ylabel('fxn')

subplot(3,1,2)
n = -1:1:10;
u1 = (n>=0);
a = 1.0;
fxn = cos(w.*n) .* (a.^n).*u1;
stem(n, fxn)
title('cos(w*n)*(a^n)*u[n], a = 1.0')
xlabel('n')
ylabel('fxn')

subplot(3,1,3)
n = -1:1:10;
u1 = (n>=0);
a = 1.5;
fxn = cos(w.*n) .* (a.^n).*u1;
stem(n, fxn)
title('cos(w*n)*(a^n)*u[n], a = 1.5')
xlabel('n')
ylabel('fxn')

orient('tall')