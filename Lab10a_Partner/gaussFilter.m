function h = gaussFilter(N, var)
h = fspecial('gaussian',N,sqrt(var));