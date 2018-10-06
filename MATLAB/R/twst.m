
for time = 1:6
    h = 10^(1-time);

x1 = 0;
x2 = 0;
x3 = 0;
tic
for i = 0:h:1-h
    x1 = x1 + 4 / (1 + (i+h/2)^2);
end
x1 = x1 * h;
a = toc;
fprintf('when h = 1/%d \tuse midpoint:%2.12f and time is %2.12f\n',10^time/10,x1,a);
end