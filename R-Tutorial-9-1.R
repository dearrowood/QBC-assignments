 ####################
# 9.1.0.0.1 Exercise #
 ####################

# What do the %% and %/% operators do?

# %% is R's modulo operator. It returns the value of the remainder of a division operation. 
# Example: 

7 %% 5 # returns interger value 2.

# %/% is R's interger division operator. It returns the rounded down interger value of a division operation. 
# Example:

5 %/% 2 = 2.

 ####################
# 9.1.1.0.1 Exercise #
 ####################

# What happens when the length of the longer vector is not a multiple of that of the shorter?

# In this case, R returns a warning message which states that the longer object length is not a multiple of the 
# length of the shorter object.
# Example:

x <- c(1,2,3)
y <- c(10,20,30,40,50)

x + y
 

 ####################
# 9.1.2.0.1 Exercise #
 ####################

#Use seq to create the vector v=(1 5 9 13), and to create a vector going from 1 to 5 in increments of 0.2 .

seq(1,13,4)
seq(1,5,0.2)

###################
9.1.2.0.2 Exercise
###################

#What happens when to is less than from in seq? What result does 3:1 give? 
# (This is one of the first “gotchas” R newbies run into.)

# When to is less than from, R returns an error message indicating the by field is the wrong side. 
# In order for seq to work this way, by has to be a negative value. 
# Example:

seq(3,1,1)  # Error return
seq(3,1,-1) # Corrected, returns the following vector: [1] 3 2 1

# Using 3:1 is an easier fix to the above issue, it will give the vector [1] 3 2 1.

 ####################
# 9.1.3.0.1 Exercise #
 ####################

# If you enter v <- z[seq(1,5,2)], what will happen? Make sure you understand why.

# Entering this will create a stored vector v: (1, 5, 9), created by accessing the block of values indexed 
# by the vector created by seq(1,5,2), which creates the vector (1, 3, 5).

v <- z[seq(1,5,2)]
v

 ####################
# 9.1.3.0.2 Exercise #
 ####################

#Write a one-line command to extract a vector consisting of the second, first, and third elements of z in that order.

>v <- z[1:3]

 ####################
# 9.1.3.0.3 Exercise #
 ####################

# What happens when I set the value of an element that doesn’t exist? For example, try: 

z <- c()
z[9] <- 11
z

# Doing this will add a new elemenent with the given value at that index. If the index of the new value is 
# greater than 1 + n, where n = the length of the original vector, then new indexed elements with value NA 
# will be added between the last element of the original vector and the newly defined element. 
# In this case, calling z returns: [1] NA NA NA NA NA NA NA NA 11

 ####################
# 9.1.3.0.4 Exercise #
 #################### 

# Write code that computes values of: y=(x-1)/(x+1) for x=1,2,...,10 and plots y versus x with the points plotted 
# and connected by a line.

x <- 1:10                           ## Defines new vector with interger values from 1 to 10
y <- (x - 1)/(x + 1)                ## Defines new vector y, from operation on vector x
plot(x,y)                           ## Plots x and y vector values 
lines(x,y)                          ## Plots the line function on the same plot as the vectors

 ####################
# 9.1.3.0.6 Exercise #
 ####################

# The sum of the geometric series: 1 + r + r^2 + r^3 +...+r^n approaches the limit 1/(1 - r) for r < 1 as n -> ∞. 
# Take r = 0.5 and n = 10, and write a one-line command that creates the vector G = (r^0, r^1, r^2,..., r^n). 
# Compare the sum (using sum()) of this vector to the limimiting value 1/(1 - r). Repeat for n = 50.

G <-rep(0.5,11)^(0:10)
sum(G) # = 1.999023
H <-rep(0.5,51)^(0:50)
sum(H) # =  2

# For high values of n, the series sum more closesly approaches the limit. Eventually, the distance from the limit
# is so small that R calculates it as equal to the limit, and values for subsequent values of n are calculated as 0.

 ####################
# 9.1.5.0.2 Exercise #
 ####################

# runif(n) is a function that generates a vector of n random, uniformly distributed numbers between 0 and 1. 
# Create a vector of 20 numbers, then find the subset of those numbers that is less than the mean.

v <- runif(20)
w <- v[1:length(v))[v < mean(v)]]

 ####################
# 9.1.5.0.3 Exercise #
 ####################

# Find the positions of the elements that are less than the mean of the vector you just created 
# (e.g. if your vector were (0.1 0.9 0.7 0.3) the answer would b (1 4)).

s <- match(w,v)

 ####################
# 9.1.5.0.4 Exercise #
 ####################

# Specify two ways to take only the elements in the odd positions (first, third, …) of a vector of arbitrary length.

v[seq(1, length(v) ,2)]
v[seq(length(v), 1, -2)]

