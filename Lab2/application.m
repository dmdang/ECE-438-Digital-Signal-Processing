load stockrates
sr = conj(rate);
n = 0:1:(length(sr))-1;

subplot(3,1,1)
stem(n, sr)
title('stockrates')
xlabel('n')
ylabel('sr')

subplot(3,1,2)
y1 = averagevalue6(sr);
stem(n, y1)
title('system6(stockrates)')
xlabel('n')
ylabel('s6(sr)')

subplot(3,1,3)
y2 = averagevalue7(sr);
stem(n, y2)
title('system7(stockrates)')
xlabel('n')
ylabel('s7(sr)')
