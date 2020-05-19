X = randn(1,1000);
Yi = filt(X);
Y = filt(X(1:41));
Yi1 = zeros;
Yi2 = zeros;
Yi3 = zeros;
Yi4 = zeros;


subplot(2,2,1)
for i = 1:900
    Yi1(i) = Yi(i + 1);
end
plot(Yi(1:900), Yi1,'.')
title('Y(i + 1) vs. Y(i)')
xlabel('Y(i)')
ylabel('Y(i + 1)')

subplot(2,2,2)
for i = 1:900
    Yi2(i) = Yi(i + 2);
end
plot(Yi(1:900), Yi2,'.')
title('Y(i + 2) vs. Y(i)')
xlabel('Y(i)')
ylabel('Y(i + 2)')

subplot(2,2,3)
for i = 1:900
    Yi3(i) = Yi(i + 3);
end
plot(Yi(1:900), Yi3,'.')
title('Y(i + 3) vs. Y(i)')
xlabel('Y(i)')
ylabel('Y(i + 3)')

subplot(2,2,4)
for i = 1:900
    Yi4(i) = Yi(i + 4);
end
plot(Yi(1:900), Yi4,'.')
title('Y(i + 4) vs. Y(i)')
xlabel('Y(i)')
ylabel('Y(i + 4)')

ryyarrEst = zeros(1,41);
m = -20:1:20;
N = 41;
for i = 1:41
    for n = 1:(21 - abs(m(i)))
        ryyarrEst(i) = ryyarrEst(i) + (Y(n).*Y(n + abs(m(i))));
        ryyarrEst(i) = (1./(21 - abs(m(i)))) .* ryyarrEst(i);
    end
end
subplot(1,1,1)
stem(m, ryyarrEst)
title("r'yy(m)")
xlabel('m')
ylabel("r'yy(m)")

rYY = zeros(1,41);
rYY(19) = 1;
rYY(20) = -2;
rYY(21) = 3;
rYY(22) = -2;
rYY(23) = 1;
figure(2)
subplot(2,1,1)
stem(m, rYY)
title('rYY(m)')
xlabel('m')
ylabel('rYY(m)')
subplot(2,1,2)
stem(m, ryyarrEst)
title("r'YY(m)")
xlabel('m')
ylabel("r'YY(m)")
