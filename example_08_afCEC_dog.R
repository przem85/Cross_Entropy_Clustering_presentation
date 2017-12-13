library(afCEC)
data(dog)
plot(dog, asp=1, pch=20)

result <- afCEC(dog, 5,  numberOfStarts=10);
plot(result)
