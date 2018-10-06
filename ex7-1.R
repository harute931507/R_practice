attach(mtcars)
########## Exercise 1 ##########
plot(mpg,drat)
# On which axis does mpg appear?
# Ans: a. mpg appears on the x axis



########## Exercise 2 ##########
# Is a scatterplot recommended for continuous or dichotomous variables?
# Ans: a. continuous



########## Exercise 3 ##########
# Produce a histogram with hist(gear). What do you see?
hist(gear)
# Ans: a. frequencies


########## Exercise 4 ##########
# Change type of visualization of our scatterplot in Exercise 1 plot(mpg,drat,type=""). 
# If we want to see lines what we have to type into “”:
plot(mpg, drat, type="l")
# Ans: a.type=”l”



########## Exercise 5 ##########
# Now we want to see both point and lines in our plot. What we have to type into
# plot(mpg,drat,type=""):
plot(mpg, drat, type="b")
# Ans: b.type=”b”



########## Exercise 6 ##########
# Add another variable to our plot, for example Weight. What command do we have to use:
# Ans: b.
plot(mpg, drat); points(mpg, wt)



########## Exercise 7 ##########
# Now we have added a new variable to our plot. 
# Suppose we want to use two different colours to separate the points. 
plot(mpg, drat, col=2)
  
# What colour have we selected?
# Ans: a. red


  
########## Exercise 8 ##########
# Now we want to differentiate the two different variables in the scatterplot:

# a. Let’s change the colours of the second plot
#Ans:
plot(mpg, drat)
points(mpg, wt, col = 3);

# b. Change use two different types of plot (e.g. points,lines)
#Ans:
plot(mpg, drat, type = "l")
points(mpg, wt, col = 2)



########## Exercise 9 ##########
# Now we want to highlight a variable in the final plot.
# Type: 
plot(mpg, drat, lwd=2)
points(mpg, wt, lwd=1). 

#Which plot is highlighted:
# Ans:a. (mpg,drat)


########## Exercise 10 ##########
# Finally choose four different continuous variables from mtcars set and produce:

# a.Plot with lines and points for different variables with different colours 
# Ans:
plot(mpg,drat,ylim=c(0,30))
points(mpg,wt,col=2,lwd=2)
points(mpg,qsec,col=3)

# b.Choose one variable from each and highlighted it set red colour and a broad line
# Ans: 
plot(mpg,drat,col=2,type="l",ylim=c(0,30))
lines(mpg,wt,col=3,lwd=2)
lines(mpg,qsec)
