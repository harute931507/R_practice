clear;
clc;

% Create Output Array
R = zeros(15, 10);

for count = 1:8
    reh(count) = 10^(1-count);
end
for count = 1:8
    arh(2*count-1) = reh(count);
end
for count = 1:7
    arh(2*count) = arh(2*count+1)*5;
end
for time = 1:15
    h = arh(time);
    % Value
    midpoint = 0;
    trapezoid = 0;
    simpson = 0;
    % Time
    midpoint_time = 0;
    trapezoid_time = 0;
    simpson_time = 0;
    % Error
    midpoint_error = 0;
    trapezoid_error = 0;
    simpson_error = 0;
    
    % Start midpoint
    tic;
    for i = 0:h:1-h
        midpoint = midpoint + 4 / (1 + (i+h/2)^2);
    end
    midpoint = midpoint * h;
    midpoint_time = toc;
    midpoint_error = abs(pi-midpoint)/pi*100;
    
    % Start trapezoid
    tic;
    for i = 0:h:1-h
        trapezoid = trapezoid + 4/(1+i^2) + 4/(1+(i+h)^2);
    end
    trapezoid = trapezoid * h/2;
    trapezoid_time = toc;
    trapezoid_error = abs(pi-trapezoid)/pi*100;
    
    % Start Simpson
    tic;
    A = 0:h:1;
    A = 4./(1+A.^2);
    simpson = h/3 * ( A(1) + A(end) + 4*sum(A(2:2:end-1)) + 2*sum(A(3:2:end-1)));
    simpson_time = toc;
    simpson_error = abs(pi-simpson)/pi*100;
    
    %fprintf('when h = %.5f \t\t mid:%2.16f \t\t time is %2.16f\n', h, midpoint, midpoint_time);
    %fprintf('when h = %.5f \t\t tra:%2.16f \t\t time is %2.16f\n', h, trapezoid, trapezoid_time);
    %fprintf('when h = %.5f \t\t Sim:%2.16f \t\t time is %2.16f\n', h, simpson, simpson_time);
    
    R(time,1) = h;
    R(time,2:3:8) = [midpoint_time, trapezoid_time, simpson_time];
    R(time,3:3:9) = [midpoint, trapezoid, simpson];
    R(time,4:3:10) = [midpoint_error, trapezoid_error, simpson_error];
    
    
end
R
%csvwrite('integral.csv',R); will loss some data
dlmwrite('test.csv', R,'precision', 16)