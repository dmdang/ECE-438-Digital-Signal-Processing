subplot(2,1,1)
N = 20;
t = -1:0.001:2;
X = rand(1,N);
F = empcdf(X,t);
plot(t, F)
hold on 
y = ramp(t) - ramp(t - 1);
plot(t, y)
title('empcdf(X,t) & actual CDF, N = 20')
xlabel('t')
ylabel('empcdf & actualcdf')

subplot(2,1,2)
N = 200;
t = -1:0.001:2;
X = rand(1,N);
F = empcdf(X,t);
plot(t, F)
hold on 
y = ramp(t) - ramp(t - 1);
plot(t, y)
title('empcdf(X,t) & actual CDF, N = 200')
xlabel('t')
ylabel('empcdf & actualcdf')
