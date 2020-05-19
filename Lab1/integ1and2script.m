%result = integ1(6);
%fprintf('%f\n', result);
y = zeros(1,100);
for i = 1:1:100  
    y(i) = integ1(i);
end

subplot(2,1,1)
plot(y)
ylim([0, 3.5])
title('I(N) vs N')
xlabel('N')
ylabel('I(N)')
grid on

%result = integ2(100);
%fprintf('%f\n', result);
z = zeros(1,100);
for i = 1:1:100  
    z(i) = integ2(i);
end

subplot(2,1,2)
plot(z)
title('J(N) vs N')
xlabel('N')
ylabel('J(N)')
grid on 