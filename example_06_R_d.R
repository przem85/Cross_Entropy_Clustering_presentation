#install.packages("pdfCluster")
library(pdfCluster)
library(CEC)
data(wine)
cec<-cec(x=as.matrix(wine[, c(2, 5, 8)]), centers=3)
pairs(wine[, c(2, 5, 8)], col=cec$cluster, pch =18, cex=1)

#Clustering of iris data set by general CEC
data(iris)
cec<-cec(x=as.matrix(iris[,1:4]), centers=3)
pairs(iris[,1:4], col=cec$cluster, pch =18, cex=1)
