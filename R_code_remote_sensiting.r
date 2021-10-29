# R code ecosystems monitoring by remote sensing 
# First at all, we need to install additional package 
# raster package to manege imagine data 
# https://cran.r-project.org/web/packages/raster/index.html

install.packages("raster")

library(raster)

# setwd("/Users/name/lab/")

#We are going to import satellite data
l2011<- brick("p224r63_2011.grd")

l2011

plot(l2011)

# B1 is the reflectance in the blue band 
# B2 is the reflectance in the green band 
# B3 is the reflectance in the red band 

colorRampPalette(c("black", "grey", "light grey")) (100)

cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(l2011, col=cl)
