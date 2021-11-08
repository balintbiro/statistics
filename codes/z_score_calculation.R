#calculating z score which is
#-the number of standard deviations from the population mean for a given data point

#define a simple variable
my_population<-c(2,1,3,1,2,3,1,3,4,5,1,1,3,4,5,2,3,4,5,2,3,2,4,1,3,4,4,2,4,5,45,3,2,1,5)

#setting the seed
set.seed(1)
my_sample<-sample(population,size=10,replace=FALSE)

#define a function for calculating z scores for every data point in a given variable
calc_z_score <- function(input_element,sample,population){
  z_score<-(input_element-mean(population))/(sd(population)/length(sample))
  return(z_score)
}

#apply the previously defined function to all element in a variable
z_scores<-sapply(my_sample,calc_z_score, sample=my_sample,population=my_population)
