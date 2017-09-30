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

get_heights = function(x){
  height_dis = rnorm(x,mean=69,sd=10)
  height_avg = mean(height_dis)       # Ex2 addition
  return(height_avg)                  # Ex3 addition
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

bins=seq(65,75,by=1)

counts_heights_1000=hist(mean_heights_1000,breaks=bins)$counts
counts_heights_100=hist(mean_heights_100,breaks=bins)$counts


barplot(rbind(counts_heights_1000,counts_heights_100),col=c(2,4),beside=TRUE,xlab="Average height (inches)",ylab="Count")

legend(1,300,c("n=1000","n=100"),col=c(2,4),lwd=4)
