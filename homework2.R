#2.6

library(ggplot2)
library(tidyverse)

to_plot <- setNames(data.frame(c('<10', '10-15', '15-25', '25-35', '35-50', '50-64', '65-75', '75-100', '100+'), c(.022, .047, .158, .183, .212, .139, .058, .084, .097)), c('Income', 'Total')) 
to_plot$Income <- factor(to_plot$Income, levels=to_plot$Income)
ggplot(x, aes(x=Income, y=Total)) + geom_bar(stat='identity')