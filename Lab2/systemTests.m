%time varying system is bbox2
subplot(2,1,1)
hold on
t = -1:0.1:5;
x1 = (t>=0);
x2 = (t>=0.5);
x3 = (t>=1);
plot(t, x1)
plot(t, x2)
plot(t, x3)
title('u[t], u[t - 0.5], u[t - 1]')
xlabel('t')
ylabel('fxns')

subplot(2,1,2)
hold on
y1 = bbox2(x1);
y2 = bbox2(x2);
y3 = bbox2(x3);
plot(t, y1)
plot(t, y2)
plot(t, y3)
title('bbox2(u[t]), bbox2(u[t - 0.5]), bbox2(u[t - 1])')
xlabel('t')
ylabel('fxns')

%non-linear system is bbox3
%{
subplot(4,1,1)
t = -5:0.1:10;
x1 = 4*sin(t);
y1 = bbox3(x1);
plot(t, y1)
title('bbox3(4*sin(t))')
xlabel('t')
ylabel('bbox3')

subplot(4,1,2)
x2 = mod(t, (2*pi)) / pi;
y2 = bbox3(x2);
plot(t, y2)
title('bbox3(mod(t, (2*pi)) / pi)')
xlabel('t')
ylabel('bbox3')

subplot(4,1,3)
x3 = x1 + x2;
y3 = bbox3(x3);
plot(t, y3)
title('bbox3(4*sin(t) + mod(t, (2*pi)) / pi)')
xlabel('t')
ylabel('bbox3')

subplot(4,1,4)
y = y1 + y2;
plot(t, y)
title('bbox3(4*sin(t)) + bbox3(mod(t, (2*pi)) / pi)')
xlabel('t')
ylabel('bbox3')
%}

