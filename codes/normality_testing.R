#qqplot
#quantile is a "line" which divides the datapoints into equally sized groups
#for example percentiles are quantiles which divide the data into 100 equally sized groups
#built in qq plot
set.seed(1)
population<-seq(1,1000,1)
var_a<-sample(population,size=100,replace=TRUE)
var_b<-sample(population,size=100,replace=TRUE)
qqplot(var_a,var_b)
abline(0,1)

#diy qqplot<-sort the variables and then plot them
var1<-sort(var_a,decreasing=FALSE)
var2<-sort(var_b,decreasing=FALSE)
plot(var1,var2)
abline(0,1)
