library(afCEC);
data(ship);
result <- afCEC(ship, 20,  numberOfStarts=10);

plot(result)
plot(result, draw_points=T, draw_means=F, draw_ellipsoids=t, draw_surfaces=F, pointsSize2D=0.1)
plot3d(ship,col=result$labels+1)
