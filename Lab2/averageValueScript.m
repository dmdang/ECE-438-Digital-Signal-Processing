n = -4:1:10;
impulse = [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; % should be 15-20 points
fiveOut = averagevalue5(impulse);
subplot(3,1,1)
stem(n, fiveOut)
title('system5(impulse)')
xlabel('n')
ylabel('system5')

sixOut = averagevalue6(impulse);
subplot(3,1,2)
stem(n, sixOut)
title('system6(impulse)')
xlabel('n')
ylabel('system6')

sevenOut = averagevalue7(impulse);
subplot(3,1,3)
stem(n, sevenOut)
title('system7(impulse)')
xlabel('n')
ylabel('system7')