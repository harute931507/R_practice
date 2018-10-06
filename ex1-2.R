#Exercise 1
#Consider two vectors, x, y
x=c(4,6,5,7,10,9,4,15)
y=c(0,10,1,8,2,3,4,1)
#What is the value of: x*y

## ANS:[0 60  5 56 20 27 16 15]
## [4*0, 6*10, 5*1, 7*8, 10*2, 9*3, 4*4, 15*1]


#Exercise 2
#Consider two vectors, a, b
a=c(1,2,4,5,6)
b=c(3,2,4,1,9)
#What is the value of: cbind(a,b)

## ANS:     
##      a b
## [1,] 1 3
## [2,] 2 2
## [3,] 4 4
## [4,] 5 1
## [5,] 6 9 


#Exercise 3
#Consider two vectors, a, b
a=c(1,5,4,3,6)
b=c(3,5,2,1,9)
#What is the value of: a<=b

## ANS:[TRUE  TRUE FALSE FALSE  TRUE]

#Exercise 4
#Consider two vectors, a, b
a=c(10,2,4,15)
b=c(3,12,4,11)
#What is the value of: rbind(a,b)

## ANS:
##   [,1] [,2] [,3] [,4]
## a   10    2    4   15
## b    3   12    4   11


#Exercise 5
#If 
x=c(1:12)
#What is the value of: dim(x)
#What is the value of: length(x)

## ANS:dim(x) is NULL
## length(x) is 12


#Exercise 6
#If 
a=c(12:5)
#What is the value of: is.numeric(a)

## ANS:TRUE
## a is [12 11 10  9  8  7  6  5]
## all of them are numeric


#Exercise 7
#Consider two vectors, x, y
x=c(12:4)
y=c(0,1,2,0,1,2,0,1,2)
#What is the value of: which(!is.finite(x/y))

## ANS:[TRUE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE]
## x is the shorter vector which will recycle
## since y[1], y[4], y[7] is 0
## so when output's index is 1, 4, 7 they will be TRUE 
## others are FALSE


#Exercise 8
#Consider two vectors, x, y
x=letters[1:10]
y=letters[15:24]
#What is the value of: x<y

## ANS:[TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE TRUE]

#Exercise 9
#If 
x=c('blue','red','green','yellow')
#What is the value of: is.character(x)

## ANS:TRUE

#Exercise 10
#If 
x=c('blue',10,'green',20)
#What is the value of: is.character(x)

## ANS:TRUE
## since a vector only have a type
## they will be check from character > numeric > logical 
## and 'blue', 'green' are clearly character
## so let 10, 20 also be treat as character '10', '20'