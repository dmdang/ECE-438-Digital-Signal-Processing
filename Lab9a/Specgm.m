function [A] = Specgm(x,L,overlap,N)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

m = 0;
n = 1;
B = zeros(N,1);
while (m+L)<=length(x)
    B(1:N) = DFTwin(x,L,m,N);
    A(1:N/2,n) = abs(B(1:N/2));
    m = m+L-overlap;
    n = n + 1;
end
imagesc([0 length(x)/8000], [0 4000], A)
axis xy
colormap(jet)

end

