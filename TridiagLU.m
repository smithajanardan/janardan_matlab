function y = TridiagLU ( c, a, b, r )
c = input('Lower Diagonal =  ');
a = input ('Main Diagonal =  ');
b = input('Upper Diagonal =  ');
r = input ('Right-hand =  ');

n = length ( a );

for i = 1 : n-1
    b(i) = b(i) / a(i);
	a(i+1) = a(i+1) - c(i) * b(i);
end

r(1) = r(1) / a(1);
for i = 2 : n
    r(i) = ( r(i) - c(i-1) * r(i-1) ) / a(i);
end

for i = n-1 : -1 : 1
    r(i) = r(i) - r(i+1) * b(i);
end

if ( nargout == 0 )
   disp ( r )
else
   y = r;
end
