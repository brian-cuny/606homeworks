library(tidyverse)

#Practice: 8.1, 8.3, 8.7, 8.15, 8.17
#Graded: 8.2, 8.4, 8.8, 8.16, 8.18


#8.2

#a. weight = -1.93 x parity + 120.07

#b. If a child is the first born it will weigh a predicted 120.07 ounces and if it is not the first born it will weigh a predicted 120.07-1.93=118.14 ounces. The slope indicates a drop of 1.93 ounces for non-first born babies

#c. With a p-value above 0.1, there is no evidence to suggest that subsiquent children weigh less than first born children.


#8.4

#a. absent days = -9.11 x eth + 3.10 x sex + 2.15 x lrn + 18.93

#b. The eth slope indicates a drop in about 9 missed days for non aboriginal students. The sex slope indicates an increase of 3 misesd days for boys compared to girls. The lrn slope indicates an increase of 2 missed days for slow learners compared to average learners.

#c. absent days = -9.11 x 0 + 3.10 x 1 + 2.15 x 1 + 18.93 = 24.18    24.18 - 2 = 22.18 days 

#d. Var(resid)=240.57, Var(absent)264.17 observations=146 

# R2 = 1 - 240.57/264.17 = 0.08933641 R2adj = 1 - 240.57/264.17 x 145 / 142 = 0.070097

#8.8

#The learner status should be removed first as it provides the greatest adjusted R2 without it being included in the model.


#8.16

#a. It appears that there is a threshold where Orings no longer function. Somehwere between 57 degrees F and 53 degrees F the Orings begin to fail. Anything above 57 degrees appears safe.

#b. The slope of the temperature is both statistically significant (p-value of essentially 0) and negative. This indicates that as the temperature rises the predicted number of failing Orings drops. The intercept is not interpretable in this context as no observations are close to a temperature of 0 degrees F.

#c. oring failure = -0.2162 x temp + 11.6630

#d. Yes, the p-value on the temperature variable indicates a strong relationship. It should be noted however that this data has one extreme outlier in shuttle mission number 1. It is possible that there was some other reason for the failure. However, as human lives are on the line, I believe it is better to be conservative and take the results at face value until such a time that further evidence can lend more insight.

#8.18

#a

p <- c(51, 53, 55)

exp(11.6630-0.2162*p) / (1 + exp(11.6630-0.2162*p))


#0.6540297, 0.5509228, 0.4432456

#b. 

data <- data.frame(prob=c(0.341, 0.251, 0.179, 0.124, 0.084, 0.056, 0.037, 0.024, 0.654, 0.551, 0.443), temp=c(57, 59, 61, 63, 65, 67, 69, 71, 51, 53, 55))

ggplot(data, aes(x=temp, y=prob)) +
  geom_point() +
  geom_smooth()


#c. As mentioned in the previous question, we are basing this off of one extreme outlier. It is cause for concern that this one result may be heavily skewing our result. In order to use a logistic regression 2 conditions are required. First the predictor is linearly related to the logit(p) and second, each outcome is independent of the other outcomes.

















