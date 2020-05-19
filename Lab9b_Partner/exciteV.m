function x = exciteV(N, Np)
x = zeros(1, N);
for i=1:Np:N
    x(i) = 1;
end