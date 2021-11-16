#compare our value to a hypothetical one (one sample version) or to another one (two samples version)
#condition(s) of usage:
#-normally distributed variable with unknown standard deviation
#t score<-(sample_mean-hypothetical_value)/(sample_standard_deviation/sqrt(samplesize))

my_variable<-c(2,7,10,0,6,0,4,5,6,2)

n<-length(my_variable)
hypothetical_value<-4
t_stat<-mean(my_variable)-hypothetical_value/sd(my_variable)/sqrt(n)

install.packages('distributions3')
library(distributions3)
T_9<-StudentsT(df=9)
