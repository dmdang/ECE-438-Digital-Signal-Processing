function [C] = CorR(X,Y,m)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

%{
Cright = zeros(1,length(m));
N1 = (floor(length(m) / 2)) + 1;
for i = ((floor(length(m) / 2)) + 1):length(m)
    for n = 1:(N1 - m(i))
        Cright(i) = Cright(i) + (X(n)*Y(n + m(i)));
        Cright(i) = (1/(N1 - m(i))) * Cright(i);
    end
end

Cleft = zeros(1,floor(length(m) / 2));
N2 = (floor(length(m) / 2)) + 1;
for i = 1:(floor(length(m) / 2))
    for n = abs(m(i)):(N2 - 1)
        Cleft(i) = Cleft(i) + (Y(n)*Y(n + abs(m(i))));
        Cleft(i) = (1/(N2 - abs(m(i)))) * Cleft(i);
    end
end

Cright(1:(floor(length(m) / 2))) = Cleft;

C = Cright;
%}

N = length(X);
C = zeros(1,length(m));
for i=1:length(m)
    if m(i)>= 0
        for n=1:(N-m(i))
            C(i) = C(i) + (1/(N-m(i)))*X(n)*Y(n+m(i));
        end
    else 
        for n=(abs(m(i))+1):N
            C(i) = C(i) + (1/(N-abs(m(i))))*X(n)*Y(n+m(i));
        end
    end
end

end

