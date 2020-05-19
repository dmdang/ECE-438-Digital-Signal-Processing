subplot(3,1,1)
x = 0:(1/20):1;
F = (x.^3) .* (x<=1);
plot(x,F)
title('Fx(x)')
xlabel('x')
ylabel('Fx(x)')

subplot(3,1,2)
x = 0:(1/20):1;
f = 3*(x.^2) .* (x<=1);
plot(x, f)
title('fx(x)')
xlabel('x')
ylabel('fx(x)')

subplot(3,1,3)
x = 0:(1/20):1;
L = 20;
x0 = 0;
xL = 1;
fk = f.*((xL - x0)/L);
stem(x, fk)
title('~f(k)')
xlabel('k')
ylabel('~f(k)')