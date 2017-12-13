library(CEC)
set.seed(322)

data <- matrix(as.numeric(as.matrix(read.table("C:\\Users\\przem85\\Dropbox\\CEC_guide\\art\\15p.txt"))),ncol=2);
plot(data)

cec<-cec(data,9, type=c("fixedr","fixedr","eigenvalues","eigenvalues","eigenvalues","eigenvalues","eigenvalues","eigenvalues","eigenvalues"), 
         param=list(300,300,c(4000,8),c(4000,8),c(4000,8),c(4000,8),c(4000,8),c(4000,8),c(4000,8)),
         nstart = 10, card.min ="0.1%")
plot(cec)

