library(afCEC)
data(fire)
plot(fire, asp=1, pch=20)

result <- afCEC(fire, 5,  numberOfStarts=10);
plot(result)
