X = randn(1,1000);
Z = randn(1,1000);
Y = X + Z;
m = -10:1:10;
C = CorR(X,Y,m);
stem(m,C)
title('CorR(X,Y,m)')
xlabel('m')
ylabel('CorR(X,Y,m)')