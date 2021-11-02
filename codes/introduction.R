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

#calculata the range of a sample
my_range<-range(my_sample)

#interquartile range
my_sample<-c(21,32,12,4,3,65,4,34,43,44,232,432,12,1,32,3245,2,34,5676,9,9,7676,56,6)
my_quantiles<-quantile(my_sample, probs=c(0.25,0.75))#lower and higher quantiles
my_quantiles<-IQR(my_sample)#Interquartie range

#variance and standard deviation
my_var<-var(my_sample)
my_sd<-sd(my_sample)

#description of a sample
my_sample<-c(1,2,2,4,5,2,1,5,6,7,8,2,4,5,2,1,3,5)
my_summary<-summary(my_sample)
boxplot(my_sample)

#two types of correlation
var_a<-c(1,2,3,4,5,6,7,8,9,10)
var_b<-c(12,21,31,45,51,67,71,83,99,109)
my_corr<-cor(var_a,var_b, method='spearman')
my_corr<-cor(var_a,var_b, method='pearson')

#confidence interval
install.packages("gmodels")
library(gmodels)
my_sample<-c(1,2,3,1,2,3,1,3,1,2,1,2,3,1,2,231,3,1,2,1,3,12,1,3,12,2,3,12,3,123,31,2,1,23,13,3,2,44,4,5,2,34,1,2,3,12,31,2,1)
my_ci<-ci(my_sample)
