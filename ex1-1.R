#Exercise 1
#Consider a vector:
x <- c(4,6,5,7,10,9,4,15)
#What is the value of:
c(4,6,5,7,10,9,4,15) < 7

#a. TRUE, FALSE, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE
#b. TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE
#c. FALSE, TRUE, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE
#d. TRUE, TRUE, TRUE, TRUE, TRUE, FALSE, TRUE, FALSE
#e. TRUE, TRUE, TRUE, FALSE, FALSE, FALSE, TRUE, FALSE

## ANS:e
## 4<7, 6<7, 5<7 thus they are TRUE, others are FALSE


#Exercise 2
#Consider two vectors:
p <- c (3, 5, 6, 8)
q <- c (3, 3, 3)
#What is the value of:
p+q

#a. 6, 8, 6, 8
#b. 6, 8, 0, 0
#c. 6, 8, NA, NA
#d. 3, 5, 6, 8
#e. 6, 8, 9, 11

## ANS:e

#Exercise 3
#If:
Age <- c(22, 25, 18, 20)
Name <- c("James", "Mathew", "Olivia", "Stella")
Gender <- c("M", "M", "F", "F")
#then what is the R-code for getting the following output;

##   Age   Name Gender
## 1  22  James      M
## 2  25 Mathew      M

#a.
#DataFrame = data.frame(c(Age), c(Name), c(Gender))
#subset(DataFrame, Gender == "M")
#b.
#DataFrame = data.frame(c(Age),c(Name),c(Gender))
#subset(Gender=="M"), eval=FALSE 
#c.
#DataFrame = data.frame(Age,Name,Gender)
#subset(DataFrame,Gender=="M")
#d.
#DataFrame = data.frame(c(Age,Name,Gender))
#subset(DataFrame,Gender=="M")

## ANS:c


#Exercise 4
#If
z <- 0:9
#then what is the output from the following R-statements:
digits <- as.character(z)
as.integer(digits)

#a. Error in subset. object 'z' not found
#b. 0, 1, 2, 3, 4, 5, 6, 7, 8, 9
#c. "NA", "NA", "NA", "NA", "NA", "NA", "NA", "NA", "NA"
#d. "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"
#e. 0, 0, 0, 0, 0, 0, 0, 0, 0

## ANS:b
## z <- 0:9 we get 0 1 2 ... 9 vector, which type is int
## then get "digits", which type is chr
## at last , it show us digits as integer type


#Exercise 5
#Consider the vector:
x <- c(1,2,3,4)
#What is the value of k for:
(x+2)[(!is.na(x)) & x > 0] -> k

#a. 1, 2, 3, 4
#b. 1, 4, 9, 16
#c. Error: object 'k' not found
#d. 3, 4, 5, 6
#e. numeric(0)

## ANS:d
## !is.na(x) will get [T T T T]
## x > 0 will get [T T T T]
## [(!is.na(x)) & x > 0] get [T T T T]
## thus no element in x will be omitted


#Exercise 6
#Consider the AirPassenger data set
data(AirPassengers)
#Which statement will produce the following output?
##  [1] 112 118 132 129 121 135 148 148 136 119 104 118

#a. AirPassengers[time(AirPassengers) >= 1949 & time(AirPassengers) < 1950, 12]
#b. AirPassengers[AirPassengers >= 1949 & AirPassengers < 1950]
#c. AirPassengers[time(AirPassengers) >= 1949 & time(AirPassengers) < 1950]
#d. AirPassengers[AirPassengers >= 1949 & AirPassengers < 1950, 12]
#e. c[[1]]

## ANS:c
## data is
## Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec
## 1949 112 118 132 129 121 135 148 148 136 119 104 118
## 1950 115 126 141 135 125 149 170 170 158 133 114 140
## 1951 145 150 178 163 172 178 199 199 184 162 146 166
## 1952 171 180 193 181 183 218 230 242 209 191 172 194
## 1953 196 196 236 235 229 243 264 272 237 211 180 201
## 1954 204 188 235 227 234 264 302 293 259 229 203 229
## 1955 242 233 267 269 270 315 364 347 312 274 237 278
## 1956 284 277 317 313 318 374 413 405 355 306 271 306
## 1957 315 301 356 348 355 422 465 467 404 347 305 336
## 1958 340 318 362 348 363 435 491 505 404 359 310 337
## 1959 360 342 406 396 420 472 548 559 463 407 362 405
## 1960 417 391 419 461 472 535 622 606 508 461 390 432
## only year 1949 ok


#Exercise 7
#If
x <- c(2, 4, 6, 8)
#and
y <- c(TRUE, TRUE, FALSE, TRUE)
#What is the value of:
sum(x[y])

#a. 20
#b. 8
#c. 14
#d. NA

## ANS:c
## x[y] will omitte 6, function sum will only receive [2, 4, 8]

#Exercise 8
#Consider the vector:
x <- c(34, 56, 55, 87, NA, 4, 77, NA, 21, NA, 39)
#Which R-statement will count the number of NA values in x?
  
#a. count(is.na(X))
#b. length(is.na(x))
#c. sum(is.na(x))
#d. count(!is.na(x))
#e. sum(!is.na(x))

## ANS:c
## is.na(x) will send [FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE  TRUE FALSE]
## sum will treat them as [0 0 0 0 1 0 0 1 0 1 0]
## thus get 3, which is the number of NA values
