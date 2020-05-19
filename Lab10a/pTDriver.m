A = imread('narrow.tif');
figure(1)
image(A);
colormap(gray(256));
axis('image');
title('original narrow')
Hist(A);
T1 = 70;
T2 = 180;
B = pointTrans(A, T1, T2);
figure()
image(B);
colormap(gray(256));
axis('image');
title('pointwise transformed narrow')
Hist(B);