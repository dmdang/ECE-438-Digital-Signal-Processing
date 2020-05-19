h = gaussFilter(5, 1);
H = fftshift(fft2(h,32,32));
figure(1)
axes = linspace(-pi, pi, length(H));
mesh(axes, axes,abs(H));
X = imread('blur.tif');