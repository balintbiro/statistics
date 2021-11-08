#calculating z score which is
#-the number of standard deviations from the population mean for a given data point

#define a simple variable
my_variable<-c(2,2,3,2,5,1,6)

#define a function for calculating z scores for every data point in a given variable
calc_z_score <- function(input_element,input_variable){
  z_score<-(input_element-mean(input_variable))/sd(input_variable)
  return(z_score)
}

#apply the previously defined function to all element in a variable
z_scores<-sapply(my_variable,calc_z_score, input_variable=my_variable)
