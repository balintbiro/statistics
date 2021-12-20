#equations for calculating the number of possible trees based on the number of OTUs
#Bioinformatics and Functional Genomics 7/7.3 box
#number of OTUs
n<-8

#number of possible rooted trees
NR<-factorial((2*n)-3)/((2**(n-2))*factorial(n-2))

#number of possible unrooted trees
NU<-factorial((2*n)-5)/((2**(n-3))*factorial(n-3))
