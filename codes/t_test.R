#compare our value to a hypothetical one (one sample version) or to another one (two samples version)
#condition(s) of usage:
#-normally distributed variable with unknown standard deviation
#t score<-(sample_mean-hypothetical_value)/(sample_standard_deviation/sqrt(samplesize))

my_variable<-c(3,7,11,0,7,0,4,5,6,2)

#in this case our H0: u=3; H1: u!=3
#this is a two sided alternative hypothesis since we do not let equality
#doesnt mattwer whther it is smaller or bigger
n<-length(my_variable)
hypothetical_value<-3
t_stat<-(mean(my_variable)-hypothetical_value)/(sd(my_variable)/sqrt(n))

