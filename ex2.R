# Exercise 1
# Create three vectors  x,y,z  with integers and each vector has 3 elements. 
# Combine the three vectors to become a 3กั3 matrix  A  where each column represents a vector. 
# Change the row names to  a,b,c.
# Think: How about each row represents a vector, can you modify your code to implement it?

# create vectors
x<-1:3;
y<-4:6;
z<-7:9;

# combine
A <-cbind(x, y, z);
rownames(A)<-c("a", "b", "c");

# show
A;

# Think
# use rbind rather than cbind


# Exercise 2
# Please check your result from Exercise 1, 
# using  is.matrix(A). 
# It should return  TRUE, if your answer is correct. 
# Otherwise, please correct your answer. 
# Hint: Note that  is.matrix()  will return  FALSE  on a non-matrix type of input. 
# Eg: a vector and so on.

is.matrix(A);
# console print TRUE


# Exercise 3
# Create a vector with 12 integers. 
# Convert the vector to a 4*3 matrix  B  using  matrix(). 
# Please change the column names to  x, y, z  and row names to  a, b, c, d.
# The argument  byrow  in  matrix()  is set to be  FALSE  by default. 
# Please change it to  TRUE  and print  B  to see the differences.

# Create vector
v2 <- 1:12;

# Convert to matrix
B <- v2; 
dim(B) <- c(4, 3);
rownames(B)<-c("a", "b", "c", "d");
colnames(B) <- c("x", "y", "z")
B;

# byrow
B <- matrix(v2, 4, 3, byrow = TRUE)
rownames(B)<-c("a", "b", "c", "d");
colnames(B) <- c("x", "y", "z")
B;


# Exercise 4
# Please obtain the transpose matrix of  B  named  tB .

tB <- t(B);
tB;

# Exercise 5
# Now  tB  is a 3กั4 matrix. 
# By the rule of matrix multiplication in algebra, can we perform  tB*tB  in R language? 
# (Is a 3กั4 matrix multiplied by a 3กั4 allowed?) 
# What result would we get?

tB * tB;
#   a  b  c   d
# x 1 16 49 100
# y 4 25 64 121
# z 9 36 81 144

# Exercise 6
# As we can see from Exercise 5, 
# we were expecting that  tB*tB  would not be allowed because it disobeys the algebra rules. 
# But it actually went through the computation in R. 
# However, as we check the output result , 
# we notice the multiplication with a single  *  operator is performing 
# the componentwise multiplication. 
# It is not the conventional matrix multiplication. 
# How to perform the conventional matrix multiplication in R? 
# Can you compute matrix  A  multiplies  tB ?

A %*% tB;


# Exercise 7
# If we convert  A  to a  data.frame  type instead of a  matrix , 
# can we still compute a conventional matrix multiplication for matrix  A  multiplies matrix  A ? 
# Is there any way we could still perform the matrix multiplication for two  data.frame  
# type variables? (Assuming proper dimension)

# convert  A  to a  data.frame  type
data_A <- data.frame(A);

as.matrix(data_A) %*% as.matrix(data_A);
# x  y   z
# a 30 66 102
# b 36 81 126
# c 42 96 150


# Exercise 8
# Extract a sub-matrix from  B  named  subB . 
# It should be a 3กั3 matrix which includes the last three rows of matrix  B  
# and their corresponding columns.


subB <- B[2:4, 1:3];
subB;

# Exercise 9
# Compute  3*A ,  A+subB ,  A-subB . Can we compute  A+B? Why?

3*A;
#  x  y  z
#a 3 12 21
#b 6 15 24
#c 9 18 27
A+subB;
#  x  y  z
#a 3 10 17
#b 5 12 19
#c 7 14 21
A-subB;
#   x  y  z
#a -1 -2 -3
#b -1 -2 -3
#c -1 -2 -3

# A + B is error in non-conformable arrays

# Exercise 10
# Generate a n * n matrix (square matrix)  A1  with proper number of random numbers,
# then generate another n * m matrix  A2.
# If we have  A1*M=A2  (Here * represents the conventional multiplication), 
# please solve for  M.
# Hint: use the  runif()  and  solve()  functions. E.g.,  
# runif(9)  should give you 9 random numbers.

#Generate a n * n matrix
A1 <- matrix(runif(9), 3, 3);

#Generate A2.
A2 <- matrix(runif(6), 3, 2);

#solve for M.
M <- solve(A1, A2)


