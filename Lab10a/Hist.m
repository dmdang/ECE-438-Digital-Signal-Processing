function Hist(A)
M=size(A,1);
N=size(A,2);
x=reshape(A, 1, M*N);
figure()
hist(x,0:255);
title('Histogram of an Image');
xlabel('pixel intensity');
ylabel('number of pixels');