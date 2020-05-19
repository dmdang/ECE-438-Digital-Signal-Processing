X = randn(1,1000);
Y = randn(1,1000);

subplot(2,2,1)
Z = Y;
plot(X,Z,'.')
title('Z vs. X, Z = Y')
xlabel('X')
ylabel('Z')
%Pxz1 = corrcoef(X,Z)
ux = mean(X);
uz = mean(Z);
num = 0;
d1 = 0;
d2 = 0;
for i = 1:length(X)
    num = num + ((X(i) - ux)*(Z(i) - uz));
    d1 = d1 + ((X(i) - ux)^2);
    d2 = d2 + ((Z(i) - uz)^2);
end
d = d1 * d2;
den = sqrt(d);
PxzEst1 = num / den


subplot(2,2,2)
Z = (X+Y)/2;
plot(X,Z,'.')
title('Z vs. X, Z = (X+Y)/2')
xlabel('X')
ylabel('Z')
%Pxz2 = corrcoef(X,Z)
ux = mean(X);
uz = mean(Z);
num = 0;
d1 = 0;
d2 = 0;
for i = 1:length(X)
    num = num + ((X(i) - ux)*(Z(i) - uz));
    d1 = d1 + ((X(i) - ux)^2);
    d2 = d2 + ((Z(i) - uz)^2);
end
d = d1 * d2;
den = sqrt(d);
PxzEst2 = num / den

subplot(2,2,3)
Z = ((4*X) + Y)/5;
plot(X,Z,'.')
title('Z vs. X, Z = ((4*X) + Y)/5')
xlabel('X')
ylabel('Z')
%Pxz3 = corrcoef(X,Z) 
ux = mean(X);
uz = mean(Z);
num = 0;
d1 = 0;
d2 = 0;
for i = 1:length(X)
    num = num + ((X(i) - ux)*(Z(i) - uz));
    d1 = d1 + ((X(i) - ux)^2);
    d2 = d2 + ((Z(i) - uz)^2);
end
d = d1 * d2;
den = sqrt(d);
PxzEst3 = num / den

subplot(2,2,4)
Z = ((99*X) + Y)/100;
plot(X,Z,'.')
title('Z vs. X, Z = ((99*X) + Y)/100')
xlabel('X')
ylabel('Z')
%Pxz4 = corrcoef(X,Z) 
ux = mean(X);
uz = mean(Z);
num = 0;
d1 = 0;
d2 = 0;
for i = 1:length(X)
    num = num + ((X(i) - ux)*(Z(i) - uz));
    d1 = d1 + ((X(i) - ux)^2);
    d2 = d2 + ((Z(i) - uz)^2);
end
d = d1 * d2;
den = sqrt(d);
PxzEst4 = num / den
