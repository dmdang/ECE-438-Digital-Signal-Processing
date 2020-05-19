w = -pi:0.01:pi;
theta = pi/3;

subplot(3,1,1)
r = 0.99;
H = (1 - r) ./ (1 - 2*r*cos(theta)*exp(-j*w) + (r^2)*exp(-2*j*w));
plot(w, abs(H))
title('|Hi(e^jw)|, theta = pi/3, r = 0.99')
xlabel('w')
ylabel('|Hi(e^jw)|')

subplot(3,1,2)
r = 0.9;
H = (1 - r) ./ (1 - 2*r*cos(theta)*exp(-j*w) + (r^2)*exp(-2*j*w));
plot(w, abs(H))
title('|Hi(e^jw)|, theta = pi/3, r = 0.9')
xlabel('w')
ylabel('|Hi(e^jw)|')

subplot(3,1,3)
r = 0.7;
H = (1 - r) ./ (1 - 2*r*cos(theta)*exp(-j*w) + (r^2)*exp(-2*j*w));
plot(w, abs(H))
title('|Hi(e^jw)|, theta = pi/3, r = 0.7')
xlabel('w')
ylabel('|Hi(e^jw)|')