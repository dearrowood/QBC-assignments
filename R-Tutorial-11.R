 #####################
# 11.0.0.0.1 Exercise #
 #####################

#Make a copy of Intro2.R under a new name, and modify the copy so that it does linear regression of algal growth rate on 
#the natural log of light intensity, LogLight=log(Light), and plots the data appropriately.
 
## see Intro2Copy.R ##
 
 #####################
# 11.0.0.0.2 Exercise #
 #####################

#Run Intro2.R, then enter the command plot(fit) in the console and follow the directions in the console. Figure out what 
#just happened by entering ?plot.lm to bring up the help page for the function plot.lm() that carries out a plot() 
#command for an object produced by lm(). (This is one example of how R uses the fact that statistical analyses are 
#stored as model objects. fit “knows” what kind of object it is (in this case an object of type lm), and so plot(fit) 
#invokes a function that produces plots suitable for an lm object.) Answer: R produced a series of diagnostic plots
#exploring whether or not the fitted linear model is a suitable fit to the data. In each of the plots, the 3 most 
#extreme points (the most likely candidates for “outliers”) have been identified according to their sequence in the
#data set.
 
 ## Complete ##

 #####################
# 11.0.0.0.3 Exercise #
 #####################

#Create a plot of growth rate versus light intensity with the xx-axis running from 0 to 120, and the yy-axis running
#from 1 to 4.
 
## see Intro2Copy.R ##

 #####################
# 11.0.0.0.4 Exercise #
 #####################

#Several graphs can be placed within a single figure by using the par function (short for “parameter”) to adjust the 
#layout of the plot. For examplethe command  par(mfrow=c(m,n)) divides the plotting area into mm rows and nn columns. 
#As a series of graphs is drawn, they are placed along the top row from left to right, then along the next row, and so
#on. mfcol=c(m,n) has the same effect except that successive graphs are drawn down the first column, 
#then down the second column, and so on.

#Save Intro2.R with a new name and modify the program as follows. Use mfcol=c(2,1) to create graphs of growth rate as 
#a function of Light, and of log(growth rate) as a function of log(Light) in the same figure. Do the same again, 
#using mfcol=c(1,2).
 
 ## see Intro2Copy.R ##

 #####################
# 11.0.0.0.5 Exercise #
 #####################

#Use ?par to read about other plot control parameters that can be set using par(). Then draw a 2×2 set of plots, 
#each showing the line y=5x+3 with x running from 3 to 8, but with 4 different line styles and 4 different 
#line colors.
 
x=c(3:8)
y= 3 + (5 * x)
par(mfcol=c(2,2))

#solid black line
plot(x,y)
fit <- lm(y~x)
abline(fit,col='black',lty=1)

#dashed red line
plot(x,y)
fit <- lm(y~x)
abline(fit,col='red',lty=2)

#dotted blue line
plot(x,y)
fit <- lm(y~x)
abline(fit,col='blue',lty=3)

#two dash green line
plot(x,y)
fit <- lm(y~x)
abline(fit,col='green',lty=6)

 #####################
# 11.0.0.0.6 Exercise #
 #####################

#Modify one of your scripts so that at the very end it saves the plot to disk. You can accomplish this using the 
#dev.print() function. Do ?dev.print to read about this function. Note that you need to specify the file argument to
#write your graphics to a file; if you don’t, it will try and send it to a printer. Also note that many alternative
#formats are available via the dev argument.
