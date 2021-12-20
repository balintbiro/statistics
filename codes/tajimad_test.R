#load the required libraries
library(gtools)

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
sequences<-c(seq0,seq1,seq2,seq3,seq4,seq5,seq6,seq7,seq8,seq9)

#create dataframe
sequences_matrix<-matrix(sequences,
              nrow=10,
              ncol=41)

tajimas_d<-function(matrix){
  indices<-c(1:nrow(matrix))
  n<-length(indices)
  combos<-combinations(n,2)
  return(data.frame(combos))
}
proba<-tajimas_d(sequences_matrix)
proba

