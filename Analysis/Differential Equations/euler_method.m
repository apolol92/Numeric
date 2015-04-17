function [ output ] = euler_method( starting_x, starting_y,...
    gradient, h, steps)
    % gradient has to be a symfun
    % h is the stepwidth of the calculation
    % steps: how many calculations you want to do
    xn = starting_x;
    yn = starting_y;
    points = [xn;yn];
    i = 0;
    while i < steps
        yn = yn + h * double(gradient(xn, yn));
        xn = xn + h;
        i = i + 1;
        points = cat(2,points,[xn;yn]);        
    output = points;
end

