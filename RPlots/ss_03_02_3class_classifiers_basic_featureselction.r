setwd("D:/Study/Thesis/Experiments/Util/RPlots")
library("ggplot2")
featuresdata = read.csv("ss_03_02_3class_classifiers_basic_featureselction.csv")
p <- ggplot(featuresdata, aes(x=features, y=value, group=classifier))+ labs(x = "Percentage of selected features (%)", y = "F scores from 10X10 CV" )
q <- p + stat_smooth(se = FALSE, aes(color=classifier)) + geom_point(aes(color=classifier, shape=classifier)) 
q + facet_grid(metrics ~ ., scale = "free_y")