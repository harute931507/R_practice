x = linspace(1,999999999999999999);
y1 = x;
y2 = x.^(1/2);
y3 = x.^(3/2);
y4 = x.*log10(x);
y5 = x.*log10(log10(x));
y6 = x.*log(x).^2;
y7 = x.*log(x.^2);
y8 = 2.^x;
y9 = 29;
y10 = x.^2.*log(x);
y11 = x.^3;

figure
plot(x,y5,'g',x,y4,'r')