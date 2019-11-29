#John Peterson num 2
library(ggplot2)
library(cowplot)


ds2=read.table("data.txt", sep=",", header=TRUE, stringsAsFactors = FALSE)

bargraph = ggplot(ds2, mapping = aes(x=region, y=observations)) #create the graph
bargraph=bargraph + stat_summary(geom="bar") #makes the graph bar. Note that stat_summary defaults to average
bargraph


scatterplot = ggplot(data=ds2,aes(x=region, y= observations)) #create the graph
scatterplot = scatterplot  + geom_jitter(alpha=0.1) #Use jitter to make it a scatter plot.
scatterplot

#The bar and scatter plots tell different stories because the bar graph doesn't
#tell you anything about the volume of a data point.
#The scatterplot with jitter allows you to see how many data points you have