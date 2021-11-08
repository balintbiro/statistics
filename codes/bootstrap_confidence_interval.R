#create variable
my_variable<-c(123,120,120,121,124,231,210,215,542,21,121,213,102,654,332,432,546,767,877,657,879,321,123,435,654,657,433,767,456)

#set seed for consistency/reproducibility
set.seed(1)

#number of required samplesize for bootstraping (=length of my_sample)
samplesize<-length(my_variable)

#number of repetition for bootstraping
repetitions<-10000

#sample the variable for the required times with replacement and load the results into a matrix
bootstrap_samples<-matrix(sample(my_variable, size=samplesize*repetitions, replace = TRUE),
               ncol=repetitions, nrow=samplesize)
dim(bootstrap_samples)#check the dimsensions of our matrix

#calculate the mean for every bootstrap samples (it will give 10000 means)
bootstrap_means<-colMeans(bootstrap_samples)

#visualize means distribution
boxplot(bootstrap_means)

#building a bootstrap confidence interval with the percentile method
lower_ci_limit<-quantile(bootstrap_means, prob=0.025)
higher_ci_limit<-quantile(bootstrap_means, prob=0.975)
#we are 95% confident that the population mean in between lower_ci_limit and higher_ci_limit