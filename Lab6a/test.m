%w = -2*pi:0.01:2*pi;
N = 20;
j = sqrt(-1);
n = 0:1:N;
%W = exp((-j.*w.*(N-1))./2).*((sin(w.*(N./2)))./sin(w./2));
%W(1) = N;

w = 0.54-0.46*cos(2*pi*(n/N));
plot(n, w)