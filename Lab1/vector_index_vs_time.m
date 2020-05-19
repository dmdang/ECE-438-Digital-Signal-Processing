t1 = -10:0.1:10;
x = sin(t1);

subplot(4,1,1)
plot(x)
title('plot(x)')
xlabel('index')
ylabel('sin(t1)')

subplot(4,1,2)
plot(t1,x)
title('plot(t1,x)')
xlabel('t1')
ylabel('sin(t1)')

subplot(4,1,3)
t2 = 0:0.1:20;
plot(t2,x)
title('plot(t2,x)')
xlabel('t2')
ylabel('sin(t1)')

subplot(4,1,4)
t3 = 3.5:0.1:4.5;
plot(t3, sin(t3));
title('plot(t3, sin(t3))')
xlabel('t3')
ylabel('sin(t3)')
grid on
