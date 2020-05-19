girl = imread('girl.tif');
load ycbcr
whos;
subplot(2,2,1)
image(girl);
axis('image');
title('original girl')
subplot(2,2,2)
R = girl(:,:,1);
image(R);
axis('image');
title('R girl')
subplot(2,2,3);
G = girl(:,:,2);
image(G);
axis('image');
title('G girl')
subplot(2,2,4);
B = girl(:,:,3);
image(B);
axis('image');
title('B girl')

figure
subplot(3,1,1)
image(ycbcr(:,:,1));
axis('image');
title('Y')
subplot(3,1,2)
image(ycbcr(:,:,2));
axis('image');
title('Cb')
subplot(3,1,3)
image(ycbcr(:,:,3));
axis('image');
title('Cr')

figure
dycbcr = double(ycbcr);
RGBycbcr = ycbcr_to_RGB(dycbcr);
RGBycbcr = uint8(RGBycbcr);
subplot(3,1,1)
image(RGBycbcr);
axis('image');
title('rgb hats')

subplot(3,1,2);
y = ycbcr(:,:,1);
cb = ycbcr(:,:,2);
cr = ycbcr(:,:,3);
filteredY = filter2(h,y);
newYCBCR = cat(3,filteredY,cb,cr);
dnewYCBCR = double(newYCBCR);
RGBnewYCBCR = ycbcr_to_RGB(dnewYCBCR);
RGBnewYCBCR = uint8(RGBnewYCBCR);
image(RGBnewYCBCR);
axis('image');
title('gauss filtered y hats')

subplot(3,1,3);
filteredCB = filter2(h,cb);
filteredCR = filter2(h,cr);
newYCBCR = cat(3,y,filteredCB,filteredCR);
dnewYCBCR = double(newYCBCR);
RGBnewYCBCR = ycbcr_to_RGB(dnewYCBCR);
RGBnewYCBCR = uint8(RGBnewYCBCR);
image(RGBnewYCBCR);
axis('image');
title('gauss filtered cb,cr hats')

