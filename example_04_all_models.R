library(CEC)

# spherical
data("Tset")
plot(Tset,asp=1,pch=20)

cec <- cec(x = Tset, centers = 10, type = "spherical", nstart = 5)
plot(cec, asp = 1)

plot(cec, model = T, asp = 1)
plot(cec, model = F, asp = 1)
cec.plot.cost.function(cec)

#fixedr
cec <- cec(x = Tset, centers = 10, type = "fixedr", param = 0.01, nstart = 20)
plot(cec, asp = 1)

#diagonal
cec <- cec(x = Tset, centers = 10, type = "diagonal", nstart = 20)
plot(cec, asp = 1)

#covariance
cec <- cec(x = Tset, centers = 10, card.min = '10%', type = "covariance",   param = matrix(c(0.04, 0, 0, 0.01), 2))
plot(cec, asp = 1)

#eigenvalues
cec <- cec(x = Tset, centers = 10, type = "eigenvalues", param = c(0.01, 0.001), nstart = 5)
plot(cec, asp = 1)
