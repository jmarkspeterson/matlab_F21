%Function multGauss sums individual gaussian distributions
function y = multGauss(x, gauss) %gauss is a matrix of amplitudes, widths and locations
rownum = size(gauss,1); %variable rownum = total number of rows in gauss
colnum = size(gauss,2); %variable colnum = total number of columns in gauss

if colnum ==3
    disp('gauss has 3 columns')
else
    error('gauss does not have 3 columns')
end

for n = 1:rownum %for loop that will make an individual gaussian distribution for each row of gauss matrix
    yindividual(n,:) = gauss(n,1)*gaussmf(x, [gauss(n,2) gauss(n,3)]);
    %yindividual(n,:) creates a new matrix of all gaussian distribution
end

y = sum(yindividual) %y variable is the sum of yindividual 