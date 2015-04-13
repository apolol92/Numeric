function [ ] = create_folium_of_descartes( a )
% This function creates a Folium of Descartes
% See also: http://en.wikipedia.org/wiki/Folium_of_Descartes
% a > 0
t = -100:0.1:100;
t(setdiff(1:end,-1))    % t != -1
%curve
x = 3 * a * t ./ (1+t.^3);
y = 3 * a * t.^2 ./(1+t.^3);
%asymptote
x2 = -a*2:a*2;
y2 = -x2-a;
%area
A1 = 3/2 * a^2
%vertex
S = [3/2*a 3/2*a]
%plotting
figure
plot(x,y, x2,y2)
hold on;
plot(S(1),S(2),'b*')
text(S(1),S(2)+0.4,strcat('S=(',num2str(S(1)),',',num2str(S(2)),')'))
text(S(1)/2,S(2)/2,'A1')
text(-0.8,-0.5,'A2')
text(-a*2+0.1*a,a+0.5*a,strcat('A1=A2= ',num2str(A1)))
axis([-a*2,a*2,-a*2,a*2])
title('Folium of Descartes')

xlabel('x')
ylabel('y')

end

