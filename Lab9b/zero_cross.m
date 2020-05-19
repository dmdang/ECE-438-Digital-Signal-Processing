function [numZeroCross] = zero_cross(Sig)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

numZeroCross = 0;
for i = 2:length(Sig)
    if (Sig(i) * Sig(i-1)) < 0
        numZeroCross = numZeroCross + 1;
    end
end


end

