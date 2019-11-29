#John Peterson. Problem 1

library(ggplot2)
library(cowplot)

ds=read.csv("educationincome.csv", header=TRUE, stringsAsFactors = TRUE)

a=ggplot(data = ds, aes(x=Education, y= Salary))
a + geom_point() 

