X = imread('race.tif');
h = gaussFilter(7, 1);
H = fftshift(fft2(h,32,32));
figure(1)
axes = linspace(-pi, pi, length(H));
mesh(axes, axes,abs(H));
%figure()
%image(X);
%colormap(gray(256));
%axis('image');
%Y = filter2(h, X);
%figure()
%image(Y);
%colormap(gray(256));
%axis('image');
%Y = medianFilter(X);
%figure()
%image(Y);
%colormap(gray(256));
%axis('image');
A = imread('noise1.tif');
%figure()
%image(A);
%colormap(gray(256));
%axis('image');
A1 = filter2(h, A);
figure()
image(A1);
colormap(gray(256));
axis('image');
A2 = medianFilter(A);
figure()
image(A2);
colormap(gray(256));
axis('image');
B = imread('noise2.tif');
%figure()
%image(B);
%colormap(gray(256));
%axis('image');
B1 = filter2(h, B);
figure()
image(B1);
colormap(gray(256));
axis('image');
B2 = medianFilter(B);
figure()
image(B2); % more pixelated than before
colormap(gray(256));
axis('image');

%figure()
%Y = imgaussfilt(X); %% recommended alternative to finding h not used in lab (for comparison testing)
%image(Y);
%colormap(gray(256));
%axis('image');
figure()
%Y = medfilt2(B); %% recommended alternative to doing medianFilter not used in lab (for comparison testing)
image(B);
colormap(gray(256));
axis('image');