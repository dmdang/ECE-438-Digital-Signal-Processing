orig_vec = audioread('phrase.au');
rows = 30*10^(-3)*8000;
cols = floor(length(orig_vec)/rows);
phrase_vec = reshape(orig_vec(1:rows*cols), rows, cols);
energy = zeros(1, cols);
VU = zeros(1, cols);
A = zeros(15, cols);
for i=1:cols
    energy(i) = sum(phrase_vec(1:end, i).^2);
    VU(i) = (zero_cross(phrase_vec(1:end, i)) < (rows/2));
    A(1:end, i) = mylpc(transpose(phrase_vec(1:end, i)), 15);
end
A(isnan(A))=0;

Awhos = whos('A');
VUwhos = whos('VU');
energywhos = whos('energy');
phrasewhos = whos('phrase_vec');
compression_ratio = (Awhos.bytes+VUwhos.bytes+energywhos.bytes)/phrasewhos.bytes;

out_vec = zeros(rows, cols);
vexcite = exciteV(rows, 7.5/0.125);
uexcite = exciteUV(rows);
for i=1:cols
    if VU(i) == 1
        temp = filter(1, [1 -transpose(A(1:end, i))], vexcite);
    else
        temp = filter(1, [1 -transpose(A(1:end, i))], uexcite);
    end
    energizer = sum(temp.^2);
    temp = transpose(temp * sqrt(energy(i)/energizer));
    out_vec(1:end, i) = temp;
end
out_vec = reshape(out_vec, rows*cols, 1);
temp = (length(orig_vec)-1)*0.125;
norig = linspace(0, temp, temp/0.125+1);
temp = (length(out_vec)-1)*0.125;
nout = linspace(0, temp, temp/0.125+1);
figure(1)
subplot(2,1,1)
plot(norig, orig_vec)
title('Plot of Original Words')
xlabel('Time (ms)')
ylabel('Original Words')
subplot(2,1,2)
plot(nout, out_vec)
title('Plot of Synthesized Words')
xlabel('Time (ms)')
ylabel('Synthesized Words')
%soundsc(orig_vec);
%soundsc(out_vec);
