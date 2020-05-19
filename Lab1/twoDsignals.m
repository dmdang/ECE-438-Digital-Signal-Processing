subplot(2,1,1)
m = -50:1:50;
n = m;
[M,N] = meshgrid(m);
F = 255 .* abs(sinc(0.2 .* M) .* sin(0.2 .* N));
mesh(M,N,F)
title('255 * abs(sinc(0.2 .* M) * sin(0.2 .* N))')
ylabel('n')
xlabel('m')

subplot(2,1,2)
image(F)
colormap(gray(256))
title('255 * abs(sinc(0.2 .* M) * sin(0.2 .* N))')
xlabel('m')
ylabel('n')
