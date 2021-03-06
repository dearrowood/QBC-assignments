 ####################
# 9.3.0.0.1 Exercise #
 ####################

#What happens when we set the dimension attribute on a vector? For example:
  
x <- seq(1,27)
is.array(x)
is.matrix(x)
dim(x) <- c(3,9)
is.array(x)
is.matrix(x)
  
#By defining dimension attributes for a vector, we redifine it as an array or matrix. A vector does not have dimension
#attributes as part of its definition.
  
