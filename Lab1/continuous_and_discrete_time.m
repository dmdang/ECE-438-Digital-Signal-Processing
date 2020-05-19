n = 0:2:60;
y = sin(n/6);
subplot(3,1,1)
stem(n,y)
title('sin(n/6) vs n')
xlabel('n')
ylabel('sin(n/6)')


n1 = 0:2:60;
z = sin(n1/6);
subplot(3,1,2)
plot(n1,z)
title('sin(n1/6) vs n1') 
xlabel('n1')
ylabel('sin(n1/6)')

n2 = 0:10:60;
w = sin(n2/6);
subplot(3,1,3)
plot(n2,w)
title('sin(n2/6) vs n2') 
xlabel('n2')
ylabel('sin(n2/6)')
