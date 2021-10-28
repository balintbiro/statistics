#get a defined size of sample from a vector
my_sample<-sample(100,#vector is from 1 to 1000
                  20)#sample size

#cumulative frequency with ordinal vairables
#lets say these are the frquencies of grades
my_sample<-c(123,210,212,321,213)
cumsum(my_sample)

#standardisation x-mean(x)/sd(x)
standardized<-scale(my_sample)

#ranking, useful for some methods (Wilcoxon, Spearman)
ranked<-rank(my_sample)

#calculating means
my_mean<-mean(my_sample)

#dealing with missing values
my_sample<-c(12,32,412,NA,98,89)
is_na<-is.na(my_sample)#return value is a boolean vector
na_positions<-which(is_na)#select the TRUE value
my_sample_naless<-my_sample[-na_positions]#subtract the missing value

