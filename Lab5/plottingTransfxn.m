w = -pi:0.01:pi;

subplot(3,1,1)
H = 1 - 2*cos(pi/6)*exp(-j*w) + exp(-2*j*w);
plot(w, abs(H))
title('|Hf(e^jw)|, theta = pi/6')
xlabel('w')
ylabel('|Hf(e^jw)|')

subplot(3,1,2)
H = 1 - 2*cos(pi/3)*exp(-j*w) + exp(-2*j*w);
plot(w, abs(H))
title('|Hf(e^jw)|, theta = pi/3')
xlabel('w')
ylabel('|Hf(e^jw)|')

subplot(3,1,3)
H = 1 - 2*cos(pi/2)*exp(-j*w) + exp(-2*j*w);
plot(w, abs(H))
title('|Hf(e^jw)|, theta = pi/2')
xlabel('w')
ylabel('|Hf(e^jw)|')