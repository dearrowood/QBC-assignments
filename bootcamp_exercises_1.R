########################################
########################################
#Bootcamp Exercise 1: Control and  Flow#
########################################
########################################

############
#Exercise 1#
############

# > Write a for loop statement so that it runs from 1:9 and prints the following output:
#
#
#
#
#
#
#
#
#*

for(ii in 1:9){
  if(ii == 9){
    cat("*")
  } else{
  cat("\n")
  }
}

############
#Exercise 2#
############

# Modify the for loop so that it prints 10 asterisks, with
# each asterisk seperated by exactly one ampersand sign (&), with no
# spaces or new line characters.

for(ii in 1:10){
  if(ii == 10){
    cat("*")
  } else{
    cat("*&")
  }
}

############
#Exercise 3#
############

# Figure out the initial values of these variables and values
# by hand at the start of each loop iteration

#dogs <- 10;
#for (i in 1:5){
#  dogs <- dogs + 1; 
#}
###

# iteration:  starti=   startdogs=  endi=   enddogs=
# 1           1         10          2       11
# 2           2         11          3       12
# 3           3         12          4       13
# 4           4         13          5       14
# 5           5         14          NA      15

#meatloaf <- 0; 
#for (i in 5:9){
#  meatloaf <- meatloaf - i + 1;
#  cat(meatloaf) 
#}
###

# iteration:  starti=   startmeatloaf=    endi=   endmeatloaf=
# 1           5         0                 6       -6
# 2           6         -6                7       -13
# 3           7         -13               8       -21
# 4           8         -21               9       -30
# 5           9         -30               NA      -40

#bubbles <- 12;
#for (i in -1:-4){
#  bubbles <- i;
#}
###

# iteration:  starti=   startbubbles=   endi=   endbubbles=
# 1           -1        12              -2      -1
# 2           -2        -1              -3      -2
# 3           -3        -2              -4      -3
# 4           -4        -3              NA      -4

############
#Exercise 4#
############

# Modify the below code to print a message during
# presidential and congressional election years

 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# ##you can use the if statement with the modulus operator to conditionally perform operations    #
# years <- c( 2015, 2016, 2018, 2020, 2021)                                                       #
# for(ii in 1:length(years)){                                                                     #
#   if(years[ii] %% 2 == 0){                                                                      #
#     cat(years[ii], 'Hooray, congressional elections!', sep = '\t', fill = T)                    #
#   }                                                                                             #
#                                                                                                 #
# }                                                                                               #
 # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #

years <- c(2015, 2016, 2018, 2020, 2021)

for(ii in 1:length(years)){
  if( years[ii] %% 4 == 0){
    cat(years[ii], 'Woohoo, presidential elections!', sep = '\t, fill = T')
  }
  else if(years[ii] %% 2 == 0){
    cat(years[ii], 'Hooray, midterms time!', sep = '\t, fill = T')
  }
}

############
#Exercise 5#
############

# More fun with loops

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);

#Now look at the error message the following lines of code produce. Can you think of a way to modify this loop so that the loop will compund the interest?

interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

#HINT: variables must be initialized before you can perform operations on them
#HINT 2: look at the rep() function and see if you can use that to initialize a variable that will help you.

bankAccounts <- c(10, 9.2, 5.6, 3.7, 8.8, 0.5);
compounded <- rep(bankAccounts)
interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }
