library("CEC")
attach(faithful)
cec<-cec(matrix(waiting),2)
print(cec)
cec$probability
hist(faithful$waiting, prob=TRUE,main = "Histogram of Time between Old Faithful eruptions", xlab = "Minutes",ylim = c(0,0.05)); 

for(i in c(1:2)){
  curve( cec$probability[i] * dnorm(x,mean=cec$centers[i],sd=sqrt(cec$covariances[[i]][1])), add=T,col="green",lwd=1)  
}
curve( pmax(cec$probability[1] * dnorm(x,mean=cec$centers[1],sd=sqrt(cec$covariances[[1]][1])),
            cec$probability[2] * dnorm(x,mean=cec$centers[2],sd=sqrt(cec$covariances[[2]][1]))), 
       add=T,col="green",lwd=4) 

library(mixtools)
gmm <- normalmixEM(waiting, lambda = .5, mu = c(55, 80), sigma = 5)

for(i in c(1:2)){
  curve( gmm$lambda[i] * dnorm(x,mean=gmm$mu[i], sd=(gmm$sigma[i])), add=T,col="blue",lwd=1)  
}

curve( gmm$lambda[1] * dnorm(x,mean=gmm$mu[1], sd=(gmm$sigma[1])) +
         gmm$lambda[2] * dnorm(x,mean=gmm$mu[2], sd=(gmm$sigma[2]))  , add=T,col="blue",lwd=4) 

