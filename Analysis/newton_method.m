function [ xn ] = newton_method( f, x0, h, steps )
%f is a symfun
%x0 is the starting value
%h is derivation-stepwidth
%steps.. how many calculations
xn = x0;
i = 0;
while i < steps
    v =  double(f(xn+h))-double(f(xn));
    derivation = v/h;
    xn = xn - double(f(xn))/derivation;
    i=i+1;
output = xn;
end

