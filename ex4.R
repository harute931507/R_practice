## data <- mtcars

#Exercise 1
#Use logical operators to output only those rows of  data  
#where column  mpg  is between 15 and 20 (excluding 15 and 20).

## ANS: data[data$mpg > 15 & data$mpg < 20,]


#Exercise 2
#Use logical operators to output only those rows of  data  
#where column  cyl  is equal to 6 and column  am  is not 0.

## ANS: data[data$cyl == 6 & data$am != 0,]


#Exercise 3
#Use logical operators to output only those rows of  data  
#where column  gear  or  carb  has the value 4.

## ANS: data[data$gear == 4 | data$carb == 4,]

#Exercise 4
#Use logical operators to output only the even rows of  data.

## ANS: data[c(FALSE,TRUE),]


#Exercise 5
#Use logical operators and change every fourth element in column  mpg  to 0.

## ANS: data$mpg[c(FALSE,FALSE,FALSE,TRUE)] <- 0

#Exercise 6
#Output only those rows of  data  where columns  vs  and  am  
#have the same value 1, solve this without using  ==  operator.

## ANS: data[data$vs & data$am,]


#Exercise 7
#(TRUE + TRUE) * FALSE , what does this expression evaluate to and why?
  
## ANS: 0
## (1+1)*0 = 0

#Exercise 8
#Output only those rows of  data 
#where at least  vs  or  am  have the value 1, 
#solve this without using  ==  or  !=.

## ANS: data[data$vs | data$am,]


#Exercise 9
#Explain the difference between  | ,  || ,  &  and  &&.

## ANS
## & and | will check both side of them at the same time
## && and || will check left side first than check the right side


#Exercise 10
#Change all values that are 0 in the column  am  in  data  to 2.

## ANS: data$am[data$am == 0] <- 2


#Exercise 11
#Add 2 to every element in the column  vs  without using numbers.

## ANS: data$vs <- data$vs + TRUE + TRUE


#Exercise 12
#Output only those rows of  data  
#where  vs  and  am  have different values, 
#solve this without using  ==  or  !=.

## ANS: data[xor(data$vs,data$am),]