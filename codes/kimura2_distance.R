
#given the two sequences. Let's calculate the Kimura2 distance between them!
seq1<-unlist(strsplit('GCCGTCAGAAATTTAGCACTGATCACAGCCTCGTCTCTGA',
                      split=""))
seq2<-unlist(strsplit('GCCCTCAGGGAATTAGCACTAATCATAACTCCGTCTGTGT',
                      split=""))

#define the purin and pyrimidin bases
purins<-c('A','G')
pyrimidines<-c('C','T')

#define function for calculating Kimura 2 genetic distance
transversion_transition_rate<-function(index){
  nucleotide_a<-seq1[index]
  nucleotide_b<-seq2[index]
  if (nucleotide_a!=nucleotide_b){
    if (((nucleotide_a %in% purins) & (nucleotide_b %in% purins))|
        ((nucleotide_a %in% pyrimidines) & (nucleotide_b %in% pyrimidines))){
      transitions<<-append(transitions,1)
    }
    else{
      transversions<<-append(transversions,1)
    }
  }
}

#define global variables
transitions<-c()
transversions<-c()

#apply the previously defined function on a vector with the same length as our sequence
sapply(c(1:length(seq1)), transversion_transition_rate)

#calculate rates from vectors
transitions<-sum(transitions)/length(seq1)
transversions<-sum(transversions)/length(seq1)

#calculate Kimura 2 distance from the transition, transposition rate
kimura_dist<--(1/2)*log((1-2*(transitions)-transversions)*sqrt((1-2*transversions)))
