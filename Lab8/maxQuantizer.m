speech = audioread('speech.au');
hist(speech,40)
title('speech signal')
xlabel('bins')
ylabel('frequency')
initial_codebook = [-0.292 -0.102 0.126 0.279];
[partition, codebook] = lloyds(speech, initial_codebook)
[index,quants,distor] = quantiz(speech,partition,codebook);
quants = quants.';
E = quants - speech;
quants2 = quants .^ 2;
E2 = E .^ 2;
Py = (1/length(quants2))*sum(quants2);
Pe = (1/length(E2))*sum(E2);
PSNR = Py / Pe

