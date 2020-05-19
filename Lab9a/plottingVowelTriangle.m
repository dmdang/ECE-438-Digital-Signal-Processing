Fx = [735.8, 234.8, 172.2, 234.8];
Fy = [2395, 469.7, 360.1, 485.3];

p1a = [735.8 2395];
p2a = [234.8 469.7];
p1u = [172.2 360.1];
p2u = [234.8 485.3];

drawArrow = @(x,y) quiver(x(1),y(1),x(2)-x(1),y(2)-y(1),0)
x1 = [735.8 234.8];
y1 = [2395 469.7];
drawArrow(x1,y1); 
hold on
x2 = [172.2 234.8];
y2 = [360.1 485.3];
drawArrow(x2,y2)
hold off

text(p1a(1),p1a(2),sprintf('(%.0f,%.0f)',p1a))
text(p2a(1),p2a(2),sprintf('(%.0f,%.0f)',p2a))
text(p1u(1),p1u(2),sprintf('(%.0f,%.0f)',p1u))
text(p2u(1),p2u(2),sprintf('(%.0f,%.0f)',p2u))

title('')
xlabel('F1')
ylabel('F2')