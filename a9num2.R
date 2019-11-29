#John Peterson num 2
library(ggplot2)
library(cowplot)


ds2=read.table("data.txt", sep=",", header=TRUE, stringsAsFactors = FALSE)

bargraph = ggplot(ds2, mapping = aes(x=region, y=observations)) #create the graph
bargraph + stat_summary(geom="bar") #makes the graph bar. Note that stat_summary defaults to average

