n = -10:1:20;
u1 = (n>=0);
u2 = (n>=11);
T = 1;
signal = u1 - u2;

diffout = differentiator(signal, T);
subplot(2,1,1)
stem(n, diffout)
title('Differentiator output D(u[n] - u[n - (N + 1)])')
xlabel('n')
ylabel('D')

intout = integrator(signal, T);
subplot(2,1,2)
stem(n, intout)
title('Integrator output I(u[n] - u[n - (N + 1)])')
xlabel('n')
ylabel('I')
