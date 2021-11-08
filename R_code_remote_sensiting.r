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

#-----------------------------------------------------day2

#link l2011 with B2_sre using the $ 

# B1 is the reflectance in the blue band 
# B2 is the reflectance in the green band 
# B3 is the reflectance in the red band 
# B4 is the reflectance in the NIR band

#let's plot the green band 
plot(l2011$B2_sre)

# we define the color we want to use 
cl <- colorRampPalette(c("black","grey","light grey"))(100)
plot(l2011$B2_sre, col=cl)
# change the colorRampPalette with dark, green , and light green e.g. clg 

clg <- colorRampPalette(c("dark green", "green", "light green")(100)
                        
clg <- colorRampPalette(c("dark green","green","light green"))(100)
plot(l2011$B2_sre, col=clg)

clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)
                        
clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)
                        
# plot both images in just  one multiframe graph 

library(raster)                        
[10:44] Duccio Rocchini
par(mfrow=c(1,2))

plot(l2011$B1_sre, col=clb)

plot(l2011$B2_sre, col=clg)

# plot both images in just  one multiframe graph with tworows and just one column
par(mfrow=c(2,1))
plot(l2011$B1_sre, col=clb)
plot(l2011$B2_sre, col=clg)

# setwd("/Users/soniamigneco/Desktop")
l2011<- brick("p224r63_2011.grd")
plot(l2011$B1_sre)

clb <- colorRampPalette(c("dark blue","blue","light blue"))(100)
plot(l2011$B1_sre, col=clb)
                        
#multiframe
par(mfrow=c(1,2))
                        
