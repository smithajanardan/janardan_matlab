p = 9999999999;
p2 = input('Initial point: ');
e = exp(-6);
i = 1;
while abs(p2-p) > e
    fprintf ('P[%0.0f] = %0.5f\n', i, p2);
    p = p2;
    [y1,y2] = fnewton(p);
    p2 = p - y1/y2;
    i = 1+i;
end
fprintf ('Root = %0.5f\n', p2)
    