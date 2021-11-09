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

#defining own function for one sample z stat calculation
z_score_calc<-function(variable,mu,sigma){
  z_score<-(mean(variable)-mu)/(sigma/sqrt(length(variable)))
}
z_score<-z_score_calc(my_population,mu=16,sigma=5)

#two sample version
#condition(s) of usage:
#-normally distributed variables with known standard deviations-->population SD so sigma
#defining own function for two sample z stat calculation
z_score_calc<-function(sample1,sample2,population1,population2){
  x1<-mean(sample1)
  x2<-mean(sample2)
  sigma1<-sd(population1)
  sigma2<-sd(population2)
  n1<-length(sample1)
  n2<-length(sample2)
  z_score<-(x1-x2)/sqrt((sigma1/n1)+(sigma2/n2))
  return(z_score)
}

#defining the variables and populations
population1<-c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1)
population2<-c(1,2,3,4,2,1,3,4,2,2,4,5,3,4,2,2,3,4,5,3,2,1,2,3,4,5,3,2,3)
sample1<-sample(population1,size=15,replace=FALSE)
sample2<-sample(population2,size=15,replace=FALSE)
z_score<-z_score_calc(sample1=sample1,
                      sample2=sample2,
                      population1=population1,
                      population2=population2)
