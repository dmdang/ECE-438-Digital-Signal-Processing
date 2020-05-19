alpha = 5;
beta = 4;
%alpha = 10;
%beta = 9;
d = [0 0 0 0 0; 0 0 0 0 0; 0 0 1 0 0; 0 0 0 0 0; 0 0 0 0 0];
h = gaussFilter(5, 1);
H = fftshift(fft2(h,32,32));
umFreqResp = alpha - beta*H;
invUmFreqResp = ifft(umFreqResp);
figure(1)
axes = linspace(-pi, pi, length(H));
mesh(axes, axes,abs(umFreqResp))
title('|Hunsharpmask(w1,w2)|')
xlabel('w1')
ylabel('w2')
zlabel('|Hunsharpmask(w1,w2)|')
figure(2)
X = imread('blur.tif');
X = double(X);
umtime = (alpha.*d) - (beta.*h);
g = filter2(umtime,X);
image(g);
colormap(gray(256));
axis('image');
title('unsharp mask of blur (alpha = 5, beta = 4)')
figure(3)
alpha = 10;
beta = 9;
h = gaussFilter(5, 1);
H = fftshift(fft2(h,32,32));
umFreqResp = alpha - beta*H;
umtime = (alpha.*d) - (beta.*h);
g = filter2(umtime,X);
image(g);
colormap(gray(256));
axis('image');
title('unsharp mask of blur (alpha = 10, beta = 9)')
figure(4)
image(X);
colormap(gray(256));
axis('image');
title('original blur')
