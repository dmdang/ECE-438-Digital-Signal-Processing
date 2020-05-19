n = -4:1:10;
impulse = [0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]; % should be 15-20 points
impulseShift = [0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0]; % should be 15-20 points
fxn = (0.5).^n .* (n>=0);
w = -pi:0.1:pi;

%{
subplot(3,1,1)
X = DTFT(impulse, -4, 0.1);
plot(w, X)
title('DTFT of delta[n]')
xlabel('w')
ylabel('X(w)')

subplot(3,1,2)
plot(w, abs(X))
title('mag(DTFT of delta[n])')
xlabel('w')
ylabel('mag (dB)')

subplot(3,1,3)
plot(w, angle(X))
title('phase(DTFT of delta[n])')
xlabel('w')
ylabel('phase (deg)')
%}

%{
subplot(3,1,1)
X = DTFT(impulseShift, -4, 0.1);
plot(w, X)
title('DTFT of delta[n-5]')
xlabel('w')
ylabel('X(w)')

subplot(3,1,2)
plot(w, abs(X))
title('mag(DTFT of delta[n-5])')
xlabel('w')
ylabel('mag (dB)')

subplot(3,1,3)
plot(w, angle(X))
title('phase(DTFT of delta[n-5])')
xlabel('w')
ylabel('phase (deg)')
%}

%{
subplot(3,1,1)
X = DTFT(fxn, -4, 0.1);
plot(w, X)
title('DTFT of (0.5)^n * u[n]')
xlabel('w')
ylabel('X(w)')

subplot(3,1,2)
plot(w, abs(X))
title('mag(DTFT of (0.5)^n * u[n])')
xlabel('w')
ylabel('mag (dB)')

subplot(3,1,3)
plot(w, angle(X))
title('phase(DTFT of (0.5)^n * u[n])')
xlabel('w')
ylabel('phase (deg)')
%}