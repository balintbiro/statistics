n<-30#number of sites where the sequences are different
N<-60#length of the alignment
hamming_distance<-n/N#fraction of different bases

D=-(3/4)*log((1-(4/3)*hamming_distance))
