n = -4:1:10;
impulse = [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; % should be 15-20 points
s3out = s3(impulse);
subplot(2,1,1)
stem(n, s3out)
title('s3(impulse)')
xlabel('n')
ylabel('s3')

s3ofs2 = s3(s2(impulse));
subplot(2,1,2)
stem(n, s3ofs2)
title('s3(s2(impulse))')
xlabel('n')
ylabel('s3(s2)')