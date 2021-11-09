#installing and importing the required module(s)
install.packages("TeachingDemos")
library(TeachingDemos)

#compare our value to a hypothetical one (one sample version) or to another one (two samples version)
#condition(s) of usage:
#-normally distributed variable with a known standard deviation-->population SD! so mu

#one sample version
#in this case we compare population mean (u) to a hypothetical value (u0)
#H0 is that u=u0
#H1 two sided u!=u0
#H1 ones sided u>u0; u<u0
my_population<-c(1,3,1,3,4,1,1,2,4,1,2,3,4,1,2,4,2,4,2,1,3,4,4,1,3,4)
z.test(my_population,mu=16,stdev=5,conf.level=0.95)#mu and stdev are hypothetical values

z_score_calc<-function(variable,mu,sigma){
  z_score<-(mean(variable)-mu)/(sigma/sqrt(length(variable)))
}
proba<-z_score_calc(my_population,mu=16,sigma=5)
