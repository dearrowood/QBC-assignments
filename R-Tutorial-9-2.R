 ####################
# 9.2.1.0.1 Exercise #
 ####################

#Use a command of the form X <- matrix(v,nrow=2,ncol=4) where v is a data vector, to create the following matrix X:
  
#     [,1] [,2] [,3] [,4]
#[1,]   1    1    1    1
#[2,]   2    2    2    2

x <- matrix(c(1,2,1,2,1,2,1,2),nrow=2,ncol=4)

 ####################
# 9.2.1.0.2 Exercise #
 ####################

# Use rnorm and matrix to create a 5×7 matrix of Gaussian random numbers with mean 1 and standard deviation 2.

x <- matrix(rnorm(35, mean = 1, sd = 2),nrow=5,ncol=7)

 ####################
# 9.2.2.0.1 Exercise #
 ####################

#Verify that rbind(C,D) works, cbind(C,C) works, but cbind(C,D) doesn’t. Why not?

C <- cbind(1:3,4:6,5:7)
D <- rbind(1:3,4:6)
C
D
rbind(C,D)
cbind(C,C)
cbind(C,D)

#rbind(C,D) and cbind(C,C) both work here because they combine matrices with matching number of columns (rbind) or rows (Cbind)
#cbind(C,D) will not work because it requires C and D to have the same number of rows, which they do not. Thus, we get an error
