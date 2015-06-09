function [ output_args ] = create_function( x_values, y_values, degree, plotting)
%CREATE_FUNCTION Summary of this function goes here

% Erstelle die erste Spalte der Vandermondesche Matrix
A = ones(length(x_values),1);
% Füge die weiteren Spalten zu der Vandermondesche Matrix hinzu
i = 1;
while i <= degree
   % Berechne Spalte
   vbuf = x_values.^i;
   % Füge Spalte hinzu
   A = horzcat(A,vbuf);
   i = i + 1;
end

% Ziel ist es A'*A*c = A*y zu lösen .. Schrittweise:
% Berechne A' * A
result_left = A' * A;
% Berechne A' * y 
result_right = A' * y_values;
% Löse Gleichungssystem
c = result_left\result_right;
% Flip Matrix, damit sie für poly2sym passend gemacht wird..
c = flipud(c);
% Erstelle symbolische Funktion
f = poly2sym(c);

if plotting
    figure
    scatter(x_values,y_values);
    hold on
    ezplot(f);
    title('Ausgleichspolynom')
    xlabel('x-Achse')
    ylabel('y-Achse')
end

output_args = f;

end

