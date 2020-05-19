subplot(2,1,1)
x = [-1:0.001:2];
N = 20;
U = rand(1,N);
truedist = (1 - exp(-3*x)).* (x>=0);
Finv = (log(-U+1) / -3);
X = empcdf(Finv, x);
plot(x,X)
hold on
plot(x,truedist)
hold off
title('empcdf(Finv, x) & actual CDF, N = 20')
xlabel('x')
ylabel('empcdf & actualcdf')

subplot(2,1,2)
N = 200;
U = rand(1,N);
Finv = (log(-U+1) / -3);
X = empcdf(Finv, x);
plot(x,X)
hold on
truedist = (1 - exp(-3*x)).*(x>=0);
plot(x, truedist)
hold off
title('empcdf(Finv, x) & actual CDF, N = 200')
xlabel('x')
ylabel('empcdf & actualcdf')