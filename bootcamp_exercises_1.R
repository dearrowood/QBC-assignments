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
compounded <- rep(bankAccounts) ## Initialized compounded vector, replicated from the vector bankAcounts

interestRate <- 0.0125;
for (i in 1:length(bankAccounts)) {
  compounded[i] <- interestRate*bankAccounts[i] + bankAccounts[i]; }

############
#Exercise 6#
############

# Suppose we now want to compound the interest annually, 
# but across a period of 5 years. The previous for loop only
# compounds for a single year.

bankAccounts <- c(10, 9.2, 5.6); #define bank accounts here
interestRate <- 0.0525;   
house <- c(4.8, 3.8, 5.7); #deduct
food<- c(3.5, 4.3, 5.0);    #deduct
fun <- c(7.8, 2.1, 10.5);  #deduct
#and incomes (through TAships) of 
income <- c(21, 21, 21); #add this

for (j in 1:5) {
  for (i in 1:length(bankAccounts)) {
    bankAccounts <- (bankAccounts - (house + food + fun)) + income; #step 1 modify bankAccounts so that amounts reflect income and expenses
    bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i];#step 2 get calculate interest and add to accounts from step 1
    #you can actually use the line you have already written if you
    #modify amounts in bankAccounts directly in step 1
  }
}

############
#Exercise 7#
############

# Modify the 5-year interest-compounding code to run from 2015-2020
# and so that in odd number years students 1&3 get trust fund disbursements
# of $5000.

for (j in 2015:2020) {
  if((j %% 2) == 1){
    bankAccounts[seq(1,3,2)] = bankAccounts[seq(1,3,2)] + 5 ## if statement adds trust fund disbursements on odd years to correct students
  }
  for (i in 1:length(bankAccounts)) {
    bankAccounts <- (bankAccounts - (house + food + fun)) + income; 
    bankAccounts[i] <- interestRate*bankAccounts[i] + bankAccounts[i];
  }
}

############
#Exercise 8#
############

# Use a while loop to sum all numbers from 1;17. You will
# need to use a counter variable (like index).

sum <- 0 # variable used to store sum value
j <- 1 # variable used as a counter to perform addition of 1:17
while (j < 18) {
  sum<- sum + j
  j<- j+1
}

############
#Exercise 9#
############

# write a function that takes a number, prints 'small' if
# number less than or equal to -1; 'medium' if between -1 and +1
# 'big' if greater than or equal to +1.

smallnum<- -2 # test variable for a 'small' number
mednum<- 0.5  # test variable for a 'medium' number
bignum<- 2    # test variable for a 'large' number

sizeCalculator <- function(x){
  if(x<= -1){ # checks if input x is less than -1
    print('small')
  }
  else if((-1 <= x) & (x <= 1)){ #checks if input x is between -1 and 1
    print('medium')
  }
  else if(x >= 1){ #checks if input x is greater than 1
    print('large')
  }
}
# The following are test cases for the sizeCalculator function
sizeCalculator(smallnum)
sizeCalculator(mednum)
sizeCalculator(bignum)
