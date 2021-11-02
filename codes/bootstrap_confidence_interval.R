#create variable
my_variable<-c(1,2,1,3,2,2,3,4,2,3,4,5,1,2,3,1,4,5,3,2,4,5,2,2,4,2,4,2,3,4,2,3,2,4,4,2,3)

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

#building a bootstrap confidence interval with the percentile method
lower_ci_limit<-quantile(bootstrap_means, prob=0.025)
higher_ci_limit<-quantile(bootstrap_means, prob=0.975)
#we are 95% confident that the population mean in between lower_ci_limit and higher_ci_limit