A = imread('dark.tif');
figure()
image(A);
colormap(gray(256));
axis('image');
gamma = 2.2;
B = gammCorr(A, gamma);
figure()
image(B);
colormap(gray(256));
axis('image');