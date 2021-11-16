#qqplot
#quantile is a "line" which divides the datapoints into equally sized groups
#for example percentiles are quantiles which divide the data into 100 equally sized groups
#built in qq plot for comparing quantiles of two variables
setwd('../statistics/results/')
set.seed(1)
population<-seq(1,1000,1)
var_a<-sample(population,size=100,replace=TRUE)
var_b<-sample(population,size=100,replace=TRUE)
png(file='qqplot_built_in.png')
par(mar=c(1, 1, 1, 1))
qqplot(var_a,var_b)
abline(0,1)
dev.off()

#diy qqplot for comparing quantiles of two variables
#sort the variables and then plot them
var1<-sort(var_a,decreasing=FALSE)
var2<-sort(var_b,decreasing=FALSE)
png(file='qqplot_diy.png')
plot(var1,var2)
abline(0,1)
dev.off()

#it is also possible to compare the quantiles of a known distribution with our samples
#to do that first we have to generate a vector which is distributed in a way we like it to be
var_a