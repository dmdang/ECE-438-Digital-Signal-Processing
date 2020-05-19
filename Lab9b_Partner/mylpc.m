function coef = mylpc(x, P)
rhat = xcorr(x, P);
rhat = rhat(P+1:end);
rs = rhat(2:end);
Rs = toeplitz(rhat(1:P));
coef = rs/Rs;