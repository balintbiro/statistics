
#given the two sequences. Let's calculate the Kimura2 distance between them!
seq1<-unlist(strsplit('GCCGTCAGAAATTTAGCACTGATCACAGCCTCGTCTCTGA',
                      split=""))
seq2<-unlist(strsplit('GCCCTCAGGGAATTAGCACTAATCATAACTCCGTCTGTGT',
                      split=""))

#define the purin and pyrimidin bases
purins<-c('A','G')
pyrimidines<-c('C','T')

#define function for calculating Kimura 2 genetic distance
kimura_dist<-function(index){
  nucleotide_a<-seq1[index]
  nucleotide_b<-seq2[index]
  if (nucleotide_a!=nucleotide_b){
    if (((nucleotide_a %in% purins) & (nucleotide_b %in% purins))|
        ((nucleotide_a %in% pyrimidines) & (nucleotide_b %in% pyrimidines))){
      transitions<<-append(transitions,1)
    }
  }
}

#define global variables
transitions<-c()
proba<-sapply(c(1:length(seq1)), kimura_dist)
transitions
