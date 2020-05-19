load radar
m = -100:1:100;
A = CorR(trans,trans,m);
C = CorR(trans,received,m);
%{
subplot(2,1,1)
plot(trans)
title('trans')
xlabel('t')
ylabel('trans')
subplot(2,1,2)
plot(received)
title('received')
xlabel('t')
ylabel('received')
%}

subplot(2,1,1)
stem(m,A)
title("r'xx(m)")
xlabel('m')
ylabel("r'xx(m)")
subplot(2,1,2)
stem(m,C)
title("c'xy(m)")
xlabel('m')
ylabel("c'xy(m)")

