# Exercise 1
# Create an array (3 dimensional) of 24 elements using the  dim()  function.

## ANS: 
## x <-1:24
## dim(x) <- c(2, 3, 4)


# Exercise 2
# Create an array (3 dimensional) of 24 elements using the  array()  function.

## ANS:
## y <- array(1:24, dim <- c(2, 3, 4))


# Exercise 3
# Assign some dimnames of your choice to the array using the  dimnames()  function.

## ANS: 
## dimnames(x) <- list(c("a", "b"), c("x", "y", "z"), c("p", "q", "r", "s"))


# Exercise 4
# Assign some dimnames of your choice to the array 
# using the arguments of the  array()  function.

## ANS:
## y <- array(1:24, dim <- c(2, 3, 4),
## dimnames <- list(c("a", "b"), c("x", "y", "z"), c("p", "q", "r", "s")))


# Exercise 5
# Instead of column-major array, make a row-major array (transpose).

## ANS:
## aperm(x, c(2, 1, 3))
 

# Exercise 6
# For this exercise, and all that follow, download this file, and read it into R 
# using the  read.csv()  function, e.g.:
# temp <- read.csv("ex5.csv")
# Copy the column named  N  into a new variable  arr.
 
## ANS:
## tmp <- read.csv("ex5.csv")
## arr <- tmp$N
## arr


# Exercise 7
# Set dimensions of this variable and convert it into a 3 * 2 * 4 array. Add dimnames.

## ANS:
## arr <- array(1:24, dim <- c(2, 3, 4),
## dimnames <- list(c("a", "b"), c("x", "y", "z"), c("p", "q", "r", "s")))
 

# Exercise 8
# Print the whole array on the screen.

## ANS: arr

 
# Exercise 9
# Print only elements of height 2, assuming the first dimension represents rows, 
# the second columns and the third heigth.

## ANS: arr[, ,2]

 
# Exercise 10
# Print elements of height 1 and columns 3 and 1.

## ANS: arr[, -2, 1];arr[, c(3, 1), 1]
 
# Exercise 11
# Print element of height 2, column 4 and row 2.

## ANS: arr[2, 4, 2]
## out of bound
 
# Exercise 12
# Repeat the exercises 9-11, but instead of using numbers to reference row, 
# column and height, use  dimnames.

## ANS: arr[,,"b"]; arr[,c("z","x"),"a"];
## arr["B",4,"b"]  
## out of bound