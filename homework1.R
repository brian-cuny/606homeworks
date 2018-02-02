library(ggplot2)

data <- data.frame(c(57, 66, 69, 71, 72, 73, 74, 77, 78, 78, 79, 79, 81, 81, 82, 83, 83, 88, 89, 94))
ggplot(data, aes(x="", y=data)) + geom_boxplot() + labs(title='Scores of Introductory Statistics Students') + xlab('') + ylab('Score')