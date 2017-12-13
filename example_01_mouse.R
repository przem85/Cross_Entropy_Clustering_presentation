library(CEC)
M = mouseset(n=7000)
plot(M, asp=1, pch = 16, cex=1)

cl<-kmeans(M, centers=3, nstart = 20)
plot(M, col = cl$cluster, asp=1, pch = 16, cex=1)

cec<-cec(M, 3, type="all", card.min ="5%",nstart=10)
plot(cec, asp=1, pch = 20, cex=1)

library(mclust)

mod2 = Mclust(M, G=3, modelName='VII')
plot(mod2, asp=1, pch = 16, what = c("classification"),cex=1)



