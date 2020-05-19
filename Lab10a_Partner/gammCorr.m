function B = gammCorr(A, gamma)
B = 255 * (double(A)/255).^(1/gamma);