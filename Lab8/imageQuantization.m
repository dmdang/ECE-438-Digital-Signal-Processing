y = imread('fountainbw.tif');
image(y);
colormap(gray(256));
axis('image');
title('original')

z = double(y);
Y = Uquant(z,2^1);
image(Y);
colormap(gray(256));
axis('image');
title('Y = Uquant(z,2^1)')

