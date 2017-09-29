 ####################
# 9.4.0.0.1 Exercise #
 ####################

#Look up the documentation on the sample function used above.

help(sample)
 
#Returns function description, usage, arguments, and other details. Sample takes a sample vector of n size 
#from a vector x or interger

 ####################
# 9.4.0.0.2 Exercise #
 ####################

#Can I make a matrix or an array out of a factor variable?

#Yes, factoring a vector doesn't necessarily mean it cannot be used to create a matrix  or array. 
#Other limitations, such as the length of the vector may still limit the creation of a matrix or array.

 ####################
# 9.4.0.0.3 Exercise #
 ####################

#What is the internal representation of factors in R ? Try converting factors to integers using as.interger. 
#Try converting an interger vector to a factor using factor.
 
x=c(1:20)
factor(x)
x
as.integer(x)

#Factors are represented in R as a vector of integers of length n, where n is equal to the number of unique entrys in
#the factored vector
