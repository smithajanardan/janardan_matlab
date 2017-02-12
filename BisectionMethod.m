a = input ('Lower limit: ');
b = input ('Upper limit: ');
e = exp(-6);
i = 1;

while (abs(b-a)/2) > e
    p = a+ (b-a)/2;
    fprintf ('P[%0.0f] = %0.5f\n', i, p);
    if fbisec(a)*fbisec(p) < 0
        b = p;
    else
        a = p;
    end
    i = 1 + i;
end
fprintf ('Root = %0.5f\n', p)
