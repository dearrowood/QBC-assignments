 #####################
# 12.1.0.0.2 Exercise #
 #####################

#Check that the following works with different vectors T. What happens when T has length 1? What happens when T has 
#length 0? Why? To avoid this trap, it’s preferable to use seq_len, seq_along, or seq.int instead of the 1:n 
#construction used above. This and many other R gotchas are described in the useful R Inferno (Burns 2012).
 
a <- 1.1
b <- 0.001
T <- seq(from=1,to=200,by=1)
T=c(1)
T=NULL
N <- numeric(length(T))
n <- 2
for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
  }

#When T has length 1, the resulting plot contains a single point. When T has length 0, R is unable to generate a plot, 
#because it is unable to plot an empty vector. Instead, it returns an error message.

 #####################
# 12.2.0.0.1 Exercise #
 #####################

#Verify that the following works as intended. How many iterations are needed?

#By adding a counter, we can keep track of the number of iterations our loop performs:
  
phi <- 20
conv <- FALSE
k <- 1
while (!conv) {
  phi.new <- 1+1/phi
  conv <- phi==phi.new
  phi <- phi.new
  k <- k+1
}

#A total of 41 iterations of the loop are performed to compute the Golden Ratio

 #####################
# 12.2.0.0.2 Exercise #
 #####################

#Recompute the trajectory of the Beverton-Holt model using a while loop. Verify that your answer is exactly equivalent 
#to the one below.

a <- 1.1
b <- 0.001
T <- seq(from=1,to=200,by=1)
N <- numeric(length(T))
n <- 2
for (t in T) {
  n <- a*n/(1+b*n)
  N[t] <- n
}

#While loop form:

a <- 1.1
b <- 0.001
t <- 1
T <- seq(from=1,to=200,by=1)
N <- numeric(length(T))
n <- 2
while (t < 200) {
  n= a*n/(1+b*n)
  N[t] = n
  t= t+1
}
T
N
plot(T,N)
