#the integral of the pdf results in cdf and so the derivative of cdf results in pdf
#create a variable and get mean and sd
x<-seq(from=1,
       to=50,
       length.out=2000)
x_mean<-mean(x)
x_sd<-sd(x)

#define a function for calculating normal distribution
normal_dist<-function(x,mean,sd){
  prob_density<-(pi*sd)*exp(-0.5*((x-mean)/sd)**2)
  return(prob_density)
}

#apply the previously defined function
pdf<-sapply(x,
            normal_dist,
            mean=x_mean,
            sd=x_sd)

#visualize the probabilty density function
setwd('../results/')
png(file='pdf.png')
plot(x,pdf)
dev.off()

#define global variables
#summation<-0

#define a function for getting cumulative distribution function
#basically the trapezoid integral
trapezoid_integral<-function(element){
  container<<-append(container,element)
  return(sum(container)/sum(pdf))
}

#define global variable
container<<-c()

#make the function work and visualize cdf
cdf<-sapply(pdf,trapezoid_integral)
png(file='cdf.png')
plot(x,cdf)
dev.off()
