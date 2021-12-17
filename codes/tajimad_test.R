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
sequences<-list(seq0,seq1,seq2,seq3,seq4,seq5,seq6,seq7,seq8,seq9)

#indices of the sequences
indices<-c(1:(length(sequences)-1))

a1<-sum(sapply(indices, function(index) 1/index))
a2<-sum(sapply(indices, function(index) 1/index**2))
