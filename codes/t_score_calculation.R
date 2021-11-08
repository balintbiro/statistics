#calculating t score which is

#define a simple variable
my_population<-c(2,1,3,1,2,3,1,3,4,5,1,1,3,4,5,2,3,4,5,2,3,2,4,1,3,4,4,2,4,5,45,3,2,1,5)

#setting the seed
set.seed(1)
my_sample<-sample(population,size=10,replace=FALSE)

#define a function for calculating t scores for every data point in a given variable
calc_t_score <- function(input_element,sample,population){
  t_score<-(input_element-mean(population))/(sd(sample)/length(sample))
  return(t_score)
}

#apply the previously defined function to all element in a variable
t_scores<-sapply(my_sample,calc_t_score, sample=my_sample,population=my_population)
