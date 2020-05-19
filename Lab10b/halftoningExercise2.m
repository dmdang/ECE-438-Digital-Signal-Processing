house = imread('house.tif');
load ycbcr
house = double(house);
%quantHouse = double(quantHouse);
I = [12 8 10 6; 4 16 2 14; 9 5 11 7; 1 13 3 15];
T = (255.*(I - 0.5))./(numel(I)); %threshold matrix
T = repmat(T,64,96);
ditherHouse = 255*(house>T);
ditherHouse = uint8(ditherHouse);
house = uint8(house);
%quantHouse = uint8(quantHouse);
image(ditherHouse);
colormap(gray(256));
truesize
axis('image');
title('Bayer dithered house')

figure
house = double(house);
ditherHouse = double(ditherHouse);
absErrDitherHouse = abs(house - ditherHouse);
house = uint8(house);
ditherHouse = uint8(ditherHouse);
image(absErrDitherHouse);
colormap(gray(256));
truesize
axis('image');
title('absolute error, Bayer dithered house')

house = double(house);
ditherHouse = double(ditherHouse);
sqDiffHouse = (house - ditherHouse).^2;
sumHouse = sum(sqDiffHouse,'all');
MSE_dithered = (1/(numel(house)*numel(house)))*sumHouse
house = uint8(house);
ditherHouse = uint8(ditherHouse);

figure
ditherHouse = double(ditherHouse);
filteredDH = filter2(h,ditherHouse);
filteredDH = uint8(filteredDH);
ditherHouse = uint8(ditherHouse);
image(filteredDH);
colormap(gray(256));
truesize
axis('image');
title('gauss filtered dither house')

house = double(house);
filteredDH = double(filteredDH);
sqDiffHouse = (house - filteredDH).^2;
sumHouse = sum(sqDiffHouse,'all');
MSE_filtered_dithered = (1/(numel(house)*numel(house)))*sumHouse
house = uint8(house);
filteredDH = uint8(filteredDH);
