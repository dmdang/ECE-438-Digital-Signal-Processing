t = 0:0.1:10;
y = sin(2*pi*t);
T = 0.1;
diffout1 = differentiator(y, T);
subplot(2,1,1)
plot(t, diffout1)
title('D(sin(2*pi*t)), T = 0.1')
xlabel('t')
ylabel('D')

t = 0:0.001:10;
T = 0.001;
y = sin(2*pi*t);
diffout2 = differentiator(y, T);
subplot(2,1,2)
plot(t, diffout2)
title('D(sin(2*pi*t)), T = 0.001')
xlabel('t')
ylabel('D')