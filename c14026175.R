# title : "Numerical Integration"
# author : "C14026175 李奇軒 & C14026214 曾敬珊"
##########

# Get Data
url <- "https://drive.google.com/uc?authuser=0&id=1cm5peMNKu1uEdtoqlWt_bLi5l3cvb8SQ&export=download"
data <- read.csv(url, header = F)
data

# Get Package
if (!"magick" %in% installed.packages()) install.packages("magick")
library(magick)

# Reorganize
col_names <- c("h","M_Time","M_Value","M_Error","T_Time","T_Value","T_Error",
               "S_Time","S_Value","S_Error","M_Digit","T_Digit","S_Digit")
x_label <- data[,1]

# Set Digits
data[,1] <- 1:15
data[,11] <- -trunc(log10(data[,4]))
data[,12] <- -trunc(log10(data[,7]))
data[,13] <- -trunc(log10(data[,10]))

# Reset Names
colnames(data) <- col_names

# Define fx
fx <- function(x){
  2*x + x * sin(x)
}

# Define the parabola function
Px <- function(x){
  fx(5)*(x-9)*(x-13)/(5-9)/(5-13)+fx(9)*(x-5)*(x-13)/(9-5)/(9-13)+fx(13)*(x-5)*(x-9)/(13-5)/(13-9)
}

########## Introduction
# Not all functions can be evaluated by the Fundamental Theorem of Calculus
# x^x, sin(x)/x
# Liouville's theorem

# Therefore, we need to use Numerical Integration to approximate the value of this kind function.

########## Methods

# Numerical Integration methods can generally be described as 
# combining evaluations of the Integrand to get an approximation to the integral. 
# The Integrand is evaluated at a finite set of points called Integration Points 
# and a weighted sum of these values is used to approximate the integral.
# The Integration Points and weights depend on the specific method used 
# and the accuracy required from the approximation.

plot(sin, from = pi/6, to = 3*pi/2,xlab = "", ylab = "", xaxt = 'n', yaxt = 'n', axes = F)
axis(1, at = c(0,1,2,3,4,40), tck = 0)
axis(2, at = c(-15,15), tck = 0)
mtext("X", side = 1, cex = 1.5, line = 2)
mtext("Y", side = 2, cex = 1.5, line = 2, las = 1)

# Midpoint
lines(c(1,1), c(-1.2, max(sin(1:100/50))), lty = 2)
lines(c(2,2), c(-1.2, max(sin(1:100/50))), lty = 2)
lines(c(1,2), c(max(sin(1:100/50)), max(sin(1:100/50))), lty = 3)

# Leftpoint
lines(c(3,3), c(-1.2, sin(2)), lty = 2)
lines(c(2,3), c(sin(2), sin(2)), lty = 3)

# Rightpoint
lines(c(4,4), c(-1.2, sin(4)), lty = 2)
lines(c(3,4), c(sin(4), sin(4)), lty = 3)

# Midpoint Rule
# Trapezoidal Rule
# Simpson's Rule


########## Consider the function $\int_{5}^{13} 2x + xsin(x) dx$

plot(fx, from = 4.5, to = 13.5, xlab = "", ylab = "", 
     xaxt = 'n', yaxt = 'n', col = "skyblue", lwd = 3, axes = F)
title(expression(paste(integral(x + x*sin(x)*dx, 5, 13))),cex = 1.5)
axis(1, at = c(0,5:13,15))
axis(2, at = c(0, 40))
mtext("X", side = 1, cex = 1.5, line = 2.5)
mtext("Y", side = 2, cex = 1.5, line = 2, las = 1)


########## Midpoint Rule
  
# The Midpoint Rule is a kind of Riemann sum, which working by approximating the region 
# under the graph of the function as rectangles .

plot(fx, from = 4.5, to = 13.5, xlab = "", ylab = "", 
     xaxt = 'n', yaxt = 'n', col = "skyblue", lwd = 3,
     main = "Midpoint Rule", axes = F)
axis(1, at = c(0,5:13,15))
axis(2, at = c(0, 40))
mtext("X", side = 1, cex = 1.5, line = 2.5)
mtext("Y", side = 2, cex = 1.5, line = 2, las = 1)

# From 5 to 13
points(5, fx(5), pch = 21 , bg = "red", cex = 1.5 , col = "red")
points(13, fx(13), pch = 21 , bg = "red", cex = 1.5, col = "red")

# Find Midpoint
points(9,fx(9), cex = 1.5 , col = "red")

# Connect
lines(c(5, 13), c(fx(9), fx(9)), col = "red" , lty = 2, lwd = 3)
lines(c(5,5), c(0,fx(9)), col = "red", lty = 2, lwd = 3)
lines(c(13,13), c(0,fx(9)), col = "red", lty = 2, lwd = 3)

# when h get smaller , we can see that the region get closer to the real value .

par(mfrow = c(4, 2), mar=c(1,1.5,1,1.5))
pointNum = 8
for (n in c(3:(pointNum+2))){
  plot(fx, from = 4.5, to = 13.5, xlab = "", ylab = "", 
       xaxt = 'n', yaxt = 'n', col = "skyblue", lwd = 3,
       main = paste(c("number of intervals : "), n-1, sep=""))
  for (i in c(1:n)){
    hs = 8/(n-1)
    px = 5 + hs * (i-1)
    py = fx(px) 
    midx = px+hs/2    
    midy = fx(px+hs/2)
    points(px, py, pch = 21 , bg = "red", cex = 1.5, col = "red")
    lines(c(px, px), c(0, py), col = "red", lty = 2, lwd =1)
    if(i<n){
      points(midx,midy, cex = 1.5 , col = "red")
      #lines(c(midx, midx), c(0, midy), col = "darkred", lty = 2, lwd = 0.3)
      lines(c(px, px + hs), c(midy, midy), col = "red", lwd = 1, lty = 2)
      lines(c(px, px), c(0, midy), col = "red", lty = 2)
      lines(c(px+hs, px+hs), c(0, midy), col = "red", lty = 2)
    }
  }
}

dev.off()

########## Trapezoidal Rule
  
# The Trapezoidal Rule works by approximating the region under the graph of the function as a trapezoid .

plot(fx, from = 4.5, to = 13.5, xlab = "", ylab = "", 
     xaxt = 'n', yaxt = 'n', col = "skyblue", lwd = 3,
     main = "Trapezoidal Rule", axes = F)
axis(1, at = c(0,5:13,15))
axis(2, at = c(0, 40))
mtext("X", side = 1, cex = 1.5, line = 2.5)
mtext("Y", side = 2, cex = 1.5, line = 2, las = 1)
points(5, fx(5), pch = 21 , bg = "red", cex = 1.5 , col = "red")
points(13, fx(13), pch = 21 , bg = "red", cex = 1.5, col = "red")

# Connect
lines(c(5,13),c(fx(5),fx(13)), col = "red" , lty = 2, lwd = 3)
lines(c(5,5), c(0,fx(5)), col = "red", lty = 2, lwd = 3)
lines(c(13,13), c(0,fx(13)), col = "red", lty = 2, lwd = 3)


# when h get smaller , we can see that the region get closer to the real value .

intervalNum = 100

for (n in c(1:intervalNum)){
  png(filename = paste(c("Trapezoidal Rule"), n, ".png", sep=""))
  plot(fx, from = 4.5, to = 13.5, xlab = "", ylab = "", 
       xaxt = 'n', yaxt = 'n', col = "skyblue", lwd = 3,
       main = paste(c("number of intervals : "), n, sep=""))
  for (i in c(1:(n+1))){
    if(n == 1){
        hs = 8
    }else{
        hs = 8/n
    }
    px = 5 + hs * (i-1)
    py = fx(px) 
    points(px, py, pch = 21 , bg = "red", cex = 1.5, col = "red")
    lines(c(px, px), c(0, py), col = "red", lty = 2)
    if(i<=n){
      lines(c(px, px + hs), c(py, fx(px + hs)), col = "red", lwd = 3)
    }
  }
  dev.off()
}
PIC <- image_read("Trapezoidal Rule1.png")
for(i in 2:intervalNum ){
  if((i-1) == length(PIC))PIC <- c(PIC,PIC[1])
  PIC[i]<-image_read( paste( c("Trapezoidal Rule"), i, ".png", sep=""))
}

animation <- image_animate(PIC, fps = 10)
file.remove(list.files(pattern=".png"))
animation
  
########## Simpson's Rule
  
# Different to the above two rules ,using straight lines to model a curve .
# Simpson's Rule use parabolas to approximate each part of the curve. 
# This proved to be very efficient since it's generally more accurate than the other numerical methods

plot(fx, from = 4.5, to = 13.5, xlab = "", ylab = "", 
     xaxt = 'n', yaxt = 'n', col = "skyblue", lwd = 3,
     main = "Simpson's Rule", axes = F)
axis(1, at = c(0,5:13,15))
axis(2, at = c(0, 40))
mtext("X", side = 1, cex = 1.5, line = 2.5)
mtext("Y", side = 2, cex = 1.5, line = 2, las = 1)
points(5, fx(5), pch = 21 , bg = "red", cex = 1.5 , col = "red")
points(13, fx(13), pch = 21 , bg = "red", cex = 1.5, col = "red")
points(9,fx(9), pch = 21 , bg = "red", cex = 1.5, col = "red")
lines(c(5,5), c(0,fx(5)), col = "red", lty = 2)
lines(c(9,9), c(0,fx(9)), col = "red", lty = 2)
lines(c(13,13), c(0,fx(13)), col = "red", lty = 2)

# Px
lines(5:13/1, Px(5:13/1), col = "blue", lwd = 2)
text(11, Px(11) + 4, "P(x)", cex = 2, col = "blue")
text(8, fx(8) + 3, "F(x)", cex = 2, col = "skyblue")

#when h get smaller , we can see that the region get closer to the real value .

animation <- image_animate(image_read('https://upload.wikimedia.org/wikipedia/en/6/67/Simpsonsrule2.gif'),
                           fps = 1)
animation




########## Comparison

plot.new()
text( .5, .5, expression(paste(integral(frac(4,1+x^2)*dx , 0, 1))== pi), cex = 3)

attach(data)

# Cost Time
plot(h, S_Time, pch = 1, type = "b",col = 1, xlab="", ylab="", 
     xaxt = "n",las = 1, lwd = 2)
axis(1, at = 1:15, label = x_label)
points(h, T_Time, pch = 0, type = "b", col = "dark red", lwd = 1.5)
points(h, M_Time, pch = 4, type = "b", col = "blue", lwd = 1.5)
legend("topleft", legend = c("Simpson", "Trapezoid", "Midpoint"), 
       col = c(1,"dark red","blue"), ncol = 3, pch = c(1,0,4),
       text.font = 2, text.col = c(1,"dark red","blue"))
  
# Error Rate
plot(h, S_Error, pch = 1, type = "b",col = 1, xlab="", ylab="", 
     xaxt = "n", yaxt = "n",las = 1, lwd = 2)
axis(1, at = 1:15, label = x_label)
axis(2, at = seq(0,30,10), las = 1, label = c("0%","10%","20%","30%"))
points(h, T_Error, pch = 0, type = "b", col = "dark red", lwd = 1.5)
points(h, M_Error, pch = 4, type = "b", col = "blue", lwd = 1.5)
legend("topright", legend = c("Simpson", "Trapezoid", "Midpoint"), 
       col = c(1,"dark red","blue"), ncol = 3, pch = c(1,0,4),
       text.font = 2, text.col = c(1,"dark red","blue"))

  
# Digits
plot(h, S_Digit, pch = 1, type = "b",col = 1, xlab="", ylab="", 
     xaxt = "n",las = 1, lwd = 2)
axis(1, at = 1:15, label = x_label)
points(h, T_Digit, pch = 0, type = "b", col = "dark red", lwd = 1.5)
points(h, M_Digit, pch = 4, type = "b", col = "blue", lwd = 1.5)
legend("bottomright", legend = c("Simpson", "Trapezoid", "Midpoint"), 
       col = c(1,"dark red","blue"), ncol = 3, pch = c(1,0,4),
       text.font = 2, text.col = c(1,"dark red","blue"))
