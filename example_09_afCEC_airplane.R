library(afCEC);
data(airplane);
result <- afCEC(airplane, 17,  numberOfStarts=1);
#result <- afCEC(airplane, 17, values="quadratic");


plot(result)

plot(result, draw_points=TRUE, draw_means=TRUE, draw_ellipsoids=F, draw_surfaces=F)
