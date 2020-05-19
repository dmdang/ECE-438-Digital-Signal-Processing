house = imread('house.tif');
load ycbcr
T = 108;
[rows, cols] = size(house);
house = double(house);
errorDiffusionHouse = fs_dithering(house);
house = uint8(house);
image(errorDiffusionHouse);
colormap(gray(256));
truesize
axis('image');
title('error diffusion house')

figure
house = double(house);
errorDiffusionHouse = double(errorDiffusionHouse);
absErrDiffusionHouse = abs(house - errorDiffusionHouse);
house = uint8(house);
errorDiffusionHouse = uint8(errorDiffusionHouse);
image(absErrDiffusionHouse);
colormap(gray(256));
truesize
axis('image');
title('absolute error, error diffusion house')

house = double(house);
errorDiffusionHouse = double(errorDiffusionHouse);
sqDiffHouse = (house - errorDiffusionHouse).^2;
sumHouse = sum(sqDiffHouse,'all');
MSE_errorDiffusion = (1/(numel(house)*numel(house)))*sumHouse
house = uint8(house);
errorDiffusionHouse = uint8(errorDiffusionHouse);

figure
errorDiffusionHouse = double(errorDiffusionHouse);
filteredEDH = filter2(h,errorDiffusionHouse);
filteredEDH = uint8(filteredEDH);
errorDiffusionHouse = uint8(errorDiffusionHouse);
image(filteredEDH);
colormap(gray(256));
truesize
axis('image');
title('gauss filtered error diffusion house')

house = double(house);
filteredEDH = double(filteredEDH);
sqDiffHouse = (house - filteredEDH).^2;
sumHouse = sum(sqDiffHouse,'all');
MSE_filtered_errorDiffusion = (1/(numel(house)*numel(house)))*sumHouse
house = uint8(house);
filteredEDH = uint8(filteredEDH);
