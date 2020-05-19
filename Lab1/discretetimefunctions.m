subplot(3,1,1)
n = -20:1:20;
u1 = (n>=0);
u2 = (n>=10);
a = 0.8;
fxn = (a.^n).*(u1 - u2);
stem(n, fxn)
title('(a^n)*(u[n] - u[n-10]), a = 0.8')
xlabel('n')
ylabel('fxn')

subplot(3,1,2)
n = -20:1:20;
u1 = (n>=0);
u2 = (n>=10);
a = 1.0;
fxn = (a.^n).*(u1 - u2);
stem(n, fxn)
title('(a^n)*(u[n] - u[n-10]), a = 1.0')
xlabel('n')
ylabel('fxn')

subplot(3,1,3)
n = -20:1:20;
u1 = (n>=0);
u2 = (n>=10);
a = 1.5;
fxn = (a.^n).*(u1 - u2);
stem(n, fxn)
title('(a^n)*(u[n] - u[n-10]), a = 1.5')
xlabel('n')
ylabel('fxn')

orient('tall')