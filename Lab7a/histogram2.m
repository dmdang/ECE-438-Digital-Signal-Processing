subplot(2,1,1)
x = 0:(1/20):1;
L = 20;
x0 = 0;
xL = 1;
fk = f.*((xL - x0)/L);
stem(x, fk)
title('~f(k)')
xlabel('k')
ylabel('~f(k)')

subplot(2,1,2)
U = zeros(1,1000);
for i = 1:length(U)
    U(i) = rand;
end
X = U.^(1/3);
H = hist(X, (0.5:19.5)/20);
H = H ./ 1000;
n = 1:1:1000;
stem(H)
title('H(k)/N')
xlabel('k')
ylabel('H(k)/N')
