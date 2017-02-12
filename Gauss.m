function x = gauss(A,b)
A = input('A =  ');
b = input ('b =  ');
[m, n] = size(A);
nb = n + 1;
Gaussian = [A, b];
for k= 1:(n-1);
    for i = (k+1):n ;
        factor = Gaussian(i,k)/Gaussian(k,k);
        Gaussian(i, k:nb) = Gaussian(i, k:nb) - factor*Gaussian(k, k:nb);
    end
end
x=zeros(n,1);
x(n) = Gaussian(n,nb)/Gaussian(n,n);
for i = n-1:-1:1
    x(i) = (Gaussian(i,nb) - Gaussian(i, (i+1):n)*x((i+1):n)) / Gaussian(i,i);
end