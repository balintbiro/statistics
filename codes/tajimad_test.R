#define sequences
seq0<-unlist(strsplit('ATAATAAAAAAATAATAAAAAAATAAAAAAAATAAAAAAAA',split=""))
seq1<-unlist(strsplit('AAAAAAAATAAATAATAAAAAAATAAAAAAAAAAAAAAAAA',split=""))
seq2<-unlist(strsplit('AAAATAAAAATATAATAAAAAAATATAAAAAAAAAAAAAAA',split=""))
seq3<-unlist(strsplit('AAAAAAAAAAAATAATAAAAAAATAAATAAATAAAAAAAAA',split=""))
seq4<-unlist(strsplit('AAAATAAAAAAAATATAAAAAAATAAAAAAAAAAAAAAAAA',split=""))
seq5<-unlist(strsplit('AAAATAAAAAAAAAATAAAAAAAAAAAAAAAAAAATAAAAA',split=""))
seq6<-unlist(strsplit('AAAAAATAAAAATAATAAAAAAATAAAAAAAAAAAAAAAAA',split=""))
seq7<-unlist(strsplit('AAAAAAAAAAAAAAATAAAAAAATAAAAAAAAAAAAAAATA',split=""))
seq8<-unlist(strsplit('AAAAAAAAAAAAAAAAAAAAAAATAAAAAAAAAAAAAAAAA',split=""))
seq9<-unlist(strsplit('AAAAAAAAAAAAAAATAAAAAAATAATAAAAAAAAAAAAAA',split=""))

#load them into a list
sequences_list<-list(seq0,seq1,seq2,seq3,seq4,seq5,seq6,seq7,seq8,seq9)
sequences<-c(seq0,seq1,seq2,seq3,seq4,seq5,seq6,seq7,seq8,seq9)

#create a dataframe from sequences vector
sequences_df<-as.data.frame(matrix(sequences,
                                   nrow=10,
                                   ncol=41,
                                   byrow=TRUE))

n<-length(sequences_list)

#number of segregating sites
s<-apply(sequences_df, 2, function(column) length(unique(column)))
s<-length(s[s!=1])/41

#indices of the sequences
indices<-c(1:(n-1))

a1<-sum(sapply(indices, function(index) 1/index))
a2<-sum(sapply(indices, function(index) 1/index**2))

b1<-(n+1)/(3*(n-1))
b2<-(2*(n**2+n+3)/((9*n)*(n-1)))

c1<-b1-(1/a1)
c2<-b2-((n+2)/(a1*n))+(a2/a1**2)

e1<-c1/a1
e2<-c2/(a1**2+a2)
