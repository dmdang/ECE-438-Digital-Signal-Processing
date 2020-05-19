subplot(4,1,1)
n = 0:1:100;
T = 1/10;
y = sin((2*pi*T).*n);
axis([0, 100, -1, 1]);
stem(n, y);
title('sin(2*pi*T*n), T = 1/10')
xlabel('n')
ylabel('sin(2*pi*T*n)')

subplot(4,1,2)
n = 0:1:30;
T = 1/3;
y = sin((2*pi*T).*n);
axis([0, 30, -1, 1]);
stem(n, y);
title('sin(2*pi*T*n), T = 1/3')
xlabel('n')
ylabel('sin(2*pi*T*n)')

subplot(4,1,3)
n = 0:1:20;
T = 1/2;
y = sin((2*pi*T).*n);
axis([0, 20, -1, 1]);
stem(n, y);
title('sin(2*pi*T*n), T = 1/2')
xlabel('n')
ylabel('sin(2*pi*T*n)')

subplot(4,1,4)
n = 0:1:9;
T = 10/9;
y = sin((2*pi*T).*n);
axis([0, 9, -1, 1]);
stem(n, y);
title('sin(2*pi*T*n), T = 10/9')
xlabel('n')
ylabel('sin(2*pi*T*n)')