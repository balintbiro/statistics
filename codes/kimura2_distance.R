
#given the two sequences. Let's calculate the Kimura2 distance between them!
seq1<-unlist(strsplit('GCCGTCAGAAATTTAGCACTGATCACAGCCTCGTCTCTGA',
                      split=""))
seq2<-unlist(strsplit('GCCCTCAGGGAATTAGCACTAATCATAACTCCGTCTGTGT',
                      split=""))

#define the purin and pyrimidin bases
purins<-c('A','G')
pyrimidines<-c('C','T')

