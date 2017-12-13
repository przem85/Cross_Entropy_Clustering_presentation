library(CEC)
#Interactive version required to press ENTER to move to the next iteration
B = ball(4000, 0.9)
plot(B,asp=1,pch=20)

cec(B,centers=2,type="sph",interactive = T, card.min="5%")


set.seed(10511250) 
data("fourGaussians")
plot(fourGaussians,asp=1,pch=20)
cec<-cec(fourGaussians, 10,interactive = T,card.min="5%")
plot(cec,asp=1)

cec.plot.cost.function(cec)

