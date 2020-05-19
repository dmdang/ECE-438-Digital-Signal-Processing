house = imread('house.tif');
load ycbcr
image(house);
%truesize;
colormap(gray(256));
axis('image');
title('original house')

figure
T = 108;
house = double(house);
quantHouse = 255*(house>T);
house = uint8(house);
quantHouse = uint8(quantHouse);
image(quantHouse);
colormap(gray(256));
%truesize
axis('image');
title('quantized house')

figure
house = double(house);
quantHouse = double(quantHouse);
absErrHouse = abs(house - quantHouse);
house = uint8(house);
quantHouse = uint8(quantHouse);
image(absErrHouse);
colormap(gray(256));
axis('image');
title('absolute error, quantized house')

house = double(house);
quantHouse = double(quantHouse);
sqDiffHouse = (house - quantHouse).^2;
sumHouse = sum(sqDiffHouse,'all');
MSE_quantized = (1/(numel(house)*numel(house)))*sumHouse
house = uint8(house);
quantHouse = uint8(quantHouse);

figure
quantHouse = double(quantHouse);
filteredQH = filter2(h,quantHouse);
quantHouse = uint8(quantHouse);
filteredQH = uint8(filteredQH);
image(filteredQH);
colormap(gray(256));
%truesize
axis('image');
title('gauss filtered quantized house')

house = double(house);
filteredQH = double(filteredQH);
sqDiffHouse = (house - filteredQH).^2;
sumHouse = sum(sqDiffHouse,'all');
MSE_filtered_quantized = (1/(numel(house)*numel(house)))*sumHouse
house = uint8(house);
filteredQH = uint8(filteredQH);







