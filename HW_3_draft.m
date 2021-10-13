% % Example from class
% % x = 0:.1:20;
% % y1 = 0.5*gaussmf(x, [3 7]);
% % plot(x, y1)
% % hold on
% % y2 = 1.5*gaussmf(x, [1 12]);
% % plot(x, y2, 'r')
% % y3 = y1+y2;
% % plot(x, y3, 'g')
% % hold off
%%

x= 0:0.1:30;
y1 = 0.5*gaussmf(x, [2 8]);
y2 = 1.25*gaussmf(x, [6 12]);
y3 = 1.5*gaussmf(x, [8 15]);

y = multGauss(y1, y2,y3)
plot(x,y1)
hold on
plot(x, y2)
plot(x,y3)
plot(x, y)
hold off

