#compare our value to a hypothetical one (one sample version) or to another one (two samples version)
#condition(s) of usage:
#-normally distributed variable with unknown standard deviation
#t score<-(sample_mean-hypothetical_value)/(sample_standard_deviation/sqrt(samplesize))

#one sample t test
my_variable<-c(3,7,11,0,7,0,4,5,6,2)

#in this case our H0: u=3; H1: u!=3 (u>3;u<3)
#this is a two sided alternative hypothesis since we do not let equality
#doesnt mattwer whther it is smaller or bigger
n<-length(my_variable)
hypothetical_value<-3
t_stat<-(mean(my_variable)-hypothetical_value)/(sd(my_variable)/sqrt(n))

#lookup the t distribution table df=9 [n-1] and it is gonna be alpha=0.1
#since we have a two sided alternative hypothesis, the p value is 0.2 so its not significant

#same with built in function
t.test(my_variable,mu=3)

#for one sided p value (or one sided alternative hypothesis) we can specify
#'alternative'='greater' or 'smaller'
#####################################################################################

