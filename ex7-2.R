attach(mtcars);
# Exercise 1
# Create a scatterplot of mpg (x-axis) against drat (y-axis) and add a label to the x-axis. 
# Which of the following statements is correct:
# a. plot(mpg,drat,xaxis="Miles per gallon")
# b. plot(mpg,drat,xlab="Miles per gallon")

## ANS: b


# Exercise 2
# We just saw how to customize the label on the x-axis. For the next exercise:
# a. Customize the y-axis label like we customized the x-axis in the previous exercise..
# b. Produce a plot customizing x and y axis, range and colours. 
# Choose a range for x axis from 0 to 40, for y axis from 0 to 7, red colour and highlighted points.

## ANS:
## a: 
## plot(mpg,drat,xlab="Miles per gallon",ylab="Rear axle ratio");
## b: 
## plot(mpg,drat,xlab="Miles per gallon",ylab="Rear axle ratio",xlim=c(0,40),col=2,lwd=2,ylim=c(0,7));


# Exercise 3
# We have to add a title to our plot. What command do we have to type?
# a. plot(mpg,drat,main="Miles vs Rar")
# b. plot(mpg,drat,title="Miles vs Rar")

## ANS: a


# Exercise 4
# We just saw how to add labels, titles and custom details such as colours and the size of points. 
# Now we will have to construct our plot in different stages. 
# Firstly we have to plot our data, secondly we will add axes, title and text.
# a.Plot our data specifying that axes haven¡¦t to be plotted.
# b.Add axes, labels and text afterwards

## ANS:
## a: plot(mpg,drat,axes=F);
## b: 
## add axes: 
## axis(side=1,at=c(0,40)); axis(side=2,at=c(0,10));

## add labels: 
## mtext("Miles",side=1); mtext("Miscellaneous",side=2);

## add title: 
## mtext("Miles vs Rar",side=3);


# Exercise 5
# Now we want to add a legend to our plot. Which statement is correct?
# a. plot(mpg,drat,legend=1)
# b. plot(mpg,drat);legend()

## ANS: 
## plot(mpg,drat);
## points(mpg,wt,col=2);
## legend("topright",legend=c("Rar","Wt"),col=1:2,ncol=2,pch=1);


# Exercise 6
# Customize our legend:
# a.Use different types of symbols, colours, background colours and position.
# b.Insert new variables to our plot and then customize the legend

## ANS:
## a:
## plot(mpg,drat,pch=2);
## points(mpg,wt,col=2);
## legend("bottomright",legend=c("Rar","Wt"),col=c(1,2),ncol=3,pch=c(2,1),bg="light blue");
## b:
## points(mpg,cyl,col=3,pch=3);
## legend("bottomright",legend=c("Rar","Cyl","Wt"),col=c(1:3),ncol=3,pch=c(2,1,3),bg="light blue");

# Exercise 7
# Finally, we will build a plot using four continuous variables in two stages:
# a. plot two variables at a time, eliminating axes. 
# Introduce axes and labels afterwards.
# b. Insert a legend using diffent colours and adifferent symbol for every variable. 
# Put the legend in a top right position using x and y coordinates.

## ANS:
## plot(mpg,drat,axes=F,xlab="",ylab="");
## points(mpg,wt,pch=2,col=2);
## points(mpg,cyl,pch=3,col=3);
## axis(side=1,at=c(0,40));
## axis(side=2,at=c(0,30));
## mtext("Miles",side=1);
## mtext("Miscellaneous",side=2);
## mtext("Miles vs Miscellaneous",side=3);
## legend("topright",legend=c("Rar","Weight","Cyl"),col=c(1:3),ncol=3,pch=1:3,bg="light blue");
