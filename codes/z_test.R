#installing and importing the required module(s)
install.packages("TeachingDemos")
library(TeachingDemos)

#compare our value to a hypothetical one (one sample version) or to another one (two samples version)
#condition(s) of usage:
#-normally distributed variable with a known standard deviation

#one sample version
#in this case we compare our value to a hypothetical one
my_variable<-c(1,3,1,3,4,1,1,2,4,1,2,3,4,1,2,4,2,4,2,1,3,4,4,1,3,4)
z.test()