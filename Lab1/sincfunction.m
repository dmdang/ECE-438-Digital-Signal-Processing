subplot(2,1,1)
x = -10*pi:0.1:10*pi;
y = sin(pi*x) ./ (pi*x);
y(x==0) = 1;
plot(x,y)
title('sinc(t)')
xlabel('t')
ylabel('sinc(t)')
grid on

subplot(2,1,2)
x = -2:0.1:2;
y = (abs(x)<=0.5);
plot(x,y)
ylim([0, 1.5])
title('rect(t)')
xlabel('t')
ylabel('rect(t)')
grid on
