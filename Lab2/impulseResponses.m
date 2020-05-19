n = -4:1:10;
impulse = [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; % should be 15-20 points
s1out = s1(impulse);
subplot(5,1,1)
stem(n, s1out)
title('s1(impulse)')
xlabel('n')
ylabel('s1')

s2out = s2(impulse);
subplot(5,1,2)
stem(n, s2out)
title('s2(impulse)')
xlabel('n')
ylabel('s2')

s1ofs2 = s1(s2(impulse));
subplot(5,1,3)
stem(n, s1ofs2)
title('s1(s2(impulse))')
xlabel('n')
ylabel('s1(s2)')

s2ofs1 = s2(s1(impulse));
subplot(5,1,4)
stem(n, s2ofs1)
title('s2(s1(impulse))')
xlabel('n')
ylabel('s2(s1)')

s1pluss2 = s1(impulse) + s2(impulse);
subplot(5,1,5)
stem(n, s1pluss2)
title('s1(impulse) + s2(impulse)')
xlabel('n')
ylabel('s1 + s2')