#################################################################################
#///////////////////////////////////////////////////////////////////////////////#
#//////////////////Plotting and genetic variation data analysis/////////////////#
#///////////////////////////////////////////////////////////////////////////////#
#################################################################################

 ##############################################
#################### Part 1 ####################
 ##############################################

 #############
# Excercise A #
 #############

#  To start let's revisit our tests of Hardy-Weinberg. Go back and
# perform the chi-square test for Hardy-Weinberg that we did in class
# on all SNPs in the "hapmap_CEU_r23a_chr2_ld.txt" file. Hint: you
# already have the code for this. Save your P-values in a vector
# called "pvals".

##### Code Below taken and modified from code used in class, comments mine ######
#################################################################################

# First, we set our working directory to the location of the necessary files:
setwd("C:/Users/Derek/Desktop/myproject/Day2")

# Then, read in our data file:
snpsDataFrame=read.table('hapmap_CEU_r23a_chr2_ld-2.txt',header=TRUE)

# Convert the dat frame to a matrix
snps=as.matrix(snpsDataFrame)

# Compute the observed heterozygosity and save it to a variable
testSNP=snps["rs218206_G",]
het=sum(testSNP==1,na.rm=TRUE)/sum(!is.na(testSNP))

# Define functions that calculate SNP frequency
calc_freq=function(x){
  return(sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x))))
}

# and heterozygosity
calc_het=function(x){
  return(sum(x==1,na.rm=TRUE)/(sum(!is.na(x))))
}

# Apply the above functions to each SNP
freq=apply(snps,1,calc_freq)
het=apply(snps,1,calc_het)

# Define another funtion that Applys X^2 to compare SNP frequency to observed 
# heterzygosity
compute_chisquare=function(x){
  freq=sum(x,na.rm=TRUE)/(2.0*sum(!is.na(x)))
  cnt0=sum(x==0,na.rm=TRUE)
  cnt1=sum(x==1,na.rm=TRUE)
  cnt2=sum(x==2,na.rm=TRUE)
  obscnts=c(cnt0,cnt1,cnt2)
  #print(obscnts)
  n=sum(obscnts)
  expcnts=c((1-freq)^2,2*freq*(1-freq),freq^2)*n
  chisq=sum((obscnts-expcnts)^2/expcnts)
  return(chisq)
}

# Apply this function to each SNP
chisqs=apply(snps,1,compute_chisquare)

# Compute p-values for each chi-square value
pvals=pchisq(chisqs,1,lower.tail=FALSE)

#################################################################################
#################################################################################

#############
# Excercise B #
#############

# What proportion of P-values from the test (put the vector called
# "pvals") are <0.05? What proportion are <0.01? Are any <0.001?

sig_snps<-subset(pvals,pvals<0.05)
prop_sig_snps<-length(sig_snps)/length(pvals)

# 4.51% of P-values are <0.05

high_sig_snps<-subset(pvals,pvals<0.01)
prop_high_sig_snps<-length(high_sig_snps)/length(pvals)

# 1.02% of P-values are <0.01

xhigh_sig_snps<-subset(pvals,pvals<0.001)
prop_xhigh_sig_snps<-length(xhigh_sig_snps)/length(pvals)

# 0.12% of P-values are <0.001

#############
# Excercise C #
#############

# How many SNPs were tested for departures from Hardy-Weinberg
# equilibrium? Hint: How many P-values do you have? Second hint:
# Try using the "length" function. Save this value in the variable called
# "num_pval".

num_pval<-length(pvals)

# 4014 SNPS were tested

#############
# Excercise D #
#############

# Say that you have "num_pval" total P-values. Assuming that the
# null hypothesis is true (i.e. all SNPs are in Hardy-Weinberg), the
# smallest P-values is expected to be 1/num_pval. The second
# smallest P-value is expected to be 2/num_pval. The third smallest
# P-value is expected to be 3/num_pval, etc. The largest P-value is
# expected to be num_pval/num_pval (or 1). Calculate the vector of
# expected P-values for the chi-square test. Save these in the vector
# called "exp_pvals".

exp_pvals<-c(1:num_pval)

for(x in exp_pvals) {
  exp_pvals[x] = exp_pvals[x]/num_pval
}

#############
# Excercise E #
#############

# The observed P-values in the "pvals" vector are in the order that
# they SNPs appear across the chromosome. We need to sort them, 
# smallest to largest. Use the "sort" function to sort the P-values.
# Store them in the vector "sort_pvals".

sort_pvals<-sort(pvals)

#############
# Excercise F #
#############

# In order to see what is happening with the small P-values (these
# are the ones we really care about), people often take the -log10
# (Pvalue). Find the -log10 of the observed and expected P-values.
# Store these in the vector "log_sort_pvals" and "log_exp_pvals".

log_sort_pvals<--log10(sort_pvals)
log_exp_pvals<--log10(exp_pvals)

#############
# Excercise G #
#############

# You're ready to make the QQ plot! Plot the "log_sort_pvals" vs. the
# "log_exp_pvals". 

plot(log_exp_pvals,log_sort_pvals)

#############
# Excercise H #
#############

# Where should these P-values fall under the null hypothesis? They
# should fall along the diagonal. Add a diagonal line to the QQ plot.

qqline(log_sort_pvals)

##############################################
#################### Part 2 ####################
##############################################

# Researchers are very interested in testing whether certain alleles
# are present in higher frequency in individuals with traits, such as 
# type 2 diabetes. We have blood glucose levels for the 60 individuals
# in this study.

#############
# Excercise A #
#############

# Load the file "pheno.sim.2014.txt". Store the phenotypes in a data
# frame called "zz". The second column in this file contains the blood
# glucose measurements. Hint: you probably want to use "header=T"
# in the "read.table" command.

zz=read.table('pheno.sim.2014-2.txt',header=TRUE)

#############
# Excercise B #
#############

# Find the value of the phenotype such that 25% of the individuals
# have a phenotype LESS than this value.

zz_mat=as.matrix(zz) # convert zz to matix
zz_phenos=zz_mat[,2] # Isoalte column of phenotype values in zz_mat as vector

quantile(zz_phenos) # Calculate quantiles for zz_phenos

# Q1 = 4.768756

#############
# Excercise C #
#############

# Find the value of the phenotype such that 25% of the individuals
# have a phenotype GREATER than this value (i.e. 75% of the
# individuals have a phenotype LESS than this value). 

# Answer from Exercise B, Q3 = 7.354975

#############
# Excercise D #
#############

# Make a density plot of the distribution of phenotypes (i.e. the blood
# glucose levels). Add vertical lines to the plot to denote the 25% and
# 75% tails of the distribution.

zz_dens=density(zz_phenos)
plot(zz_dens)
abline(v=4.768756)
abline(v=7.354975)
