function [y1,y2] = fnewton (x)
y1 = log(1+x) - cos(x);
y2 = 1/(1+x) +sin(x);
end