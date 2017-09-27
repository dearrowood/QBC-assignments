##########################################
##########################################
#Bootcamp Exercise 2: Plotting & Analysis#
##########################################
##########################################

############
#Exercise 1#
############

# Write a function called get_heights to draw a sample of individuals
# (100 or 1000) from the population.

get_heights <- function(x){
  mean(rnorm(x,mean=69,sd=10))
}
get_heights(100)
get_heights(1000)

############
#Exercise 2#
############

# Within the above function, compute the average height from the heights vector.


############
#Exercise 3#
############

# Make the function return the average height

############
#Exercise 4#
############

# Use a for loop to call get_heights function 100 times, taking a sample of size
# 100 from the population. Save the mean height from each replicate in a vector called
# mean_heights_100

mean_heights_100 <- rep(0,100)

for(i in 1:100){
  mean_heights_100[i] <-get_heights(100)
}

############
#Exercise 5#
############

# Use a for loop to call get_heights function 1000 times, taking a sample of size
# 100 from the population. Save the mean height from each replicate in a vector called
# mean_heights_1000

mean_heights_1000 <- rep(0,1000)

for(i in 1:1000){
  mean_heights_1000[i] <-get_heights(100)
}

############
#Exercise 6#
############

# Plot a historgram of the distribution off the average heights for your sample size of 100 and
# 1000 individuals. The two sets of data should be plotted on the same axes. Add a legend. label
# the axes. Plot the data from the 100 samples in red and the data from the 1000 samples in blue.
# Your plot should look something like the one shown in the exercise directions.

barplot(rbind(mean_heights_100,mean_heights_1000),col=c(2,4),beside=T,names.arg=seq(-10,9.5,by=1),xlab="avg height",ylab="count")

