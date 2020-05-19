load vowels.mat;
figure(1)
n = linspace(0,(length(a)-1)/8000, length(a));
subplot(2,1,1)
plot(n,a)
title("'a' Signal")
xlabel('Time(s)')
ylabel('a(s)')
subplot(2,1,2)
A1 = Specgm(transpose(a), 320, 60, 512);
title("'a' Narrowband Spectogram")
xlabel('Time(s)')
ylabel('Frequency (Hz)')
figure(2)
A2 = Specgm(transpose(e), 320, 60, 512);
title("'e' Narrowband Spectogram")
xlabel('Time(s)')
ylabel('Frequency (Hz)')
figure(3)
A3 = Specgm(transpose(i), 320, 60, 512);
title("'i' Narrowband Spectogram")
xlabel('Time(s)')
ylabel('Frequency (Hz)')
figure(4)
A4 = Specgm(transpose(o), 320, 60, 512);
title("'o' Narrowband Spectogram")
xlabel('Time(s)')
ylabel('Frequency (Hz)')
figure(5)
n = linspace(0,(length(u)-1)/8000, length(u));
subplot(2,1,1)
plot(n, u)
title("'u' Signal")
xlabel('Time(s)')
ylabel('u(s)')
subplot(2,1,2)
A5 = Specgm(transpose(u), 320, 60, 512);
title("'u' Narrowband Spectogram")
xlabel('Time(s)')
ylabel('Frequency (Hz)')
f = linspace(0, 8000, 512);
figure(6)
subplot(2,1,1)
Awin0 = abs(DFTwin(transpose(a),265,4554,512));
plot(f(f<=4000), Awin0(f<=4000))
title('Initial |A|')
xlabel('Frequency(Hz)')
ylabel('|A|')
subplot(2,1,2)
Awin1 = abs(DFTwin(transpose(a),204,7108,512));
plot(f(f<=4000), Awin1(f<=4000))
title('End |A|')
xlabel('Frequency(Hz)')
ylabel('|A|')
figure(7)
subplot(2,1,1)
%Uwin0 = abs(DFTwin(transpose(u),250,3334,512));
Uwin0 = abs(DFTwin(transpose(u),267,2045,512));
plot(f(f<=4000), Uwin0(f<=4000))
title('Initial |U|')
xlabel('Frequency(Hz)')
ylabel('|U|')
subplot(2,1,2)
Uwin1 = abs(DFTwin(transpose(u),202,5378,512));
plot(f(f<=4000), Uwin1(f<=4000))
title('End |U|')
xlabel('Frequency(Hz)')
ylabel('|U|')