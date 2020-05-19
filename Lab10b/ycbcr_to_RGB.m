function [RGB] = ycbcr_to_RGB(YCBCR)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

Y = YCBCR(:,:,1);
Cb = YCBCR(:,:,2);
Cr = YCBCR(:,:,3);

R = Y + 1.4025.*(Cr - 128);
G = Y - 0.3443.*(Cb - 128) - 0.7144.*(Cr - 128);
B = Y + 1.7730.*(Cb - 128);

RGB = cat(3,R,G,B);


end

