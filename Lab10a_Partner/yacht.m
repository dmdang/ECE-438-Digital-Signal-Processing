A = imread('yacht.tif');
B = double(A);
whos
figure(1)
image(B);
colormap(gray(256));
axis('image');
C = fliplr(B);
figure(2)
image(C);
colormap(gray(256));
axis('image');
D = flipud(B);
figure(3)
image(D);
colormap(gray(256));
axis('image');
E = 255-B;
figure(4)
image(E);
colormap(gray(256));
axis('image');
F = B*1.5;
figure(5)
image(F);
colormap(gray(256));
axis('image');