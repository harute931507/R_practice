#Exercise 1
#If x <- c("ww", "ee", "ff", "uu", "kk"), 
#what will be the output for x[c(2,3)]?

#a. "ee", "ff"
#b. "ee"
#c. "ff"

## ANS: a


#Exercise 2
#If x <- c("ss", "aa", "ff", "kk", "bb"), 
#what will be the third value in the index vector operation x[c(2, 4, 4)]?

#a. "uu"
#b. NA
#c. "kk"

## ANS: c
## It will print "aa" "kk" "kk"


#Exercise 3
#If x <- c("pp", "aa", "gg", "kk", "bb"), 
#what will be the fourth value in the index vector operation x[-2]?
  
#a. "aa"
#b. "gg"
#c. "bb"

## ANS: c
## Because "-2", it will omit second value in the vector

#Exercise 4
#Let a <- c(2, 4, 6, 8) and b <- c(TRUE, FALSE, TRUE, FALSE), 
#what will be the output for the R expression max(a[b])?
  
## ANS: 6


#Exercise 5
#Let a <- c (3, 4, 7, 8) and b <- c(TRUE, TRUE, FALSE, FALSE), 
#what will be the output for the R expression sum(a[b])?
  
## ANS: 7
## 3+4


#Exercise 6
#Write an R expression that will return the sum value of 10 
#for the vector x <- c(2, 1, 4, 2, 1, NA)

## ANS: sum(x[1:5])


#Exercise 7
#If x <- c(1, 3, 5, 7, NA) write an r expression that will 
#return the output 1, 3, 5, 7.

## ANS: x[-5]


#Exercise 8
#Consider the data frame 
#s <- data.frame(first= as.factor(c("x", "y", "a", "b", "x", "z")), 
#second=c(2, 4, 6, 8, 10, 12)). 
#Write an R statement that will 
#return the output 2, 4, 10, by using the variable first as an index vector.

## ANS: s$second[s$first %in% c('x', 'y')]

#Exercise 9
#What will be the output for the R expression (c(FALSE, TRUE)) || (c(TRUE, TRUE))?
 
## ANS: TRUE
 

#Exercise 10
#Write an R expression that will return the positions of 3 and 7 
#in the vector x <- c(1, 3, 6, 7, 3, 7, 8, 9, 3, 7, 2).

## ANS: which(x %in% c(3, 7))