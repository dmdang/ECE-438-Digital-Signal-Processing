function zcdOut = zero_cross(vector)
zcd = dsp.ZeroCrossingDetector; %can use?
zcdOut = zcd(vector);