function output = pointTrans(input, T1, T2)
output = input;
for m=1:size(input,1)
	for n=1:size(input,2)
        if(input(m,n)<=T1)
            output(m,n) = 0;
        elseif(input(m,n)>=T2)
            output(m,n) = 255;
        else
            output(m,n) = double((input(m,n)-T1))/(T2-T1)*255;
        end        
    end
end