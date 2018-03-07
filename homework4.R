#Graded: 4.4, 4.14, 4.24, 4.26, 4.34, 4.40, 4.48


#4.4

#a. The point estimate is the mean 171.1. The median is 170.3 as per the chart.
#b. The sd is 9.4 as per the graph. The IQR is 177.8-163.8=14
#c. A person who is 180cm tall is in the top 25% of heights. That is tall, but not unusually. A person who is shorter than 155cm is in the bottom 25% of heights and very close to the min value in the sample. This is likely unusually short.
#d. No. The mean and standard deviation would be close, but not identical to the numbers above. Random chance will ensure some variation in the distribution but the sample size is large enough that most will accurately represent the population.
#e. Standard error is calculated as 9.4/sqrt(507)=.417

#4.14

#a. True (although the book says False). We are 100% confident that the average spending of these is 84.71. Overall, the statement is misleading as the confidence interval is used to make predicitions on the population, not the sample.
#b. False. Any given sample may have any given distribution. 
#c. False. Confidence intervals are used to make predictions on populations, not other samples.
#d. True. This is the stated use of a confidence interval.
#e. True. Less confidence requires covering fewer possible outcomes.
#f. False. The population must grow as a square of the increase. We would need 9 times as many people.
#g. False. This is only valid if the sample is roughly normal, which it is not. 

#4.24

#a. Yes. The data has at least 30 elements collected from a simple random sample.
#b. null hypothesis = 32 alternate hypothesis < 32 se = 4.31/sqrt(36)=.71833333

#z=30.69-32 / .7183333 = -1.824 p-value=0.0344 Since the p-value is smaller than .1 we reject the null hypothesis. There is evidence to suggest that gifted children learn to count to 10 earlier than the general population.

#c. The p-value is the probability that our sample mean does not demonstrate a difference between itself and the population mean. That is, there is appoximately a 3.5% chance that the population mean of gifted children is not below 32 months.

#d. 30.69 + 1.645*.718 = 31.87111 30.69-1.645*.718=29.50889

#e. Yes. We can state with 90% confidence that the population mean of gifted children is between 29.5 and 31.87. All of these values are below the population mean of all children.

#4.26

#a. null hypothesis = 100, alternate hypothesis != 100, se = 6.5/sqrt(36) = 1.08333

#z = 118.2-100/1.08333 = 98.95 p-value = 0. With a p-value of 0, we reject the null hypothesis. There is very strong evidence to suggest that the mother's iq is different from the population of all mothers.

#b 118.2 + 1.645*1.08333 = 119.98, 118.2 - 1.645*1.08333 = 116.417

#c. Yes, they do. The confidence interval does not include 100 which confirms the hypothesis test that the sample mean suggests a difference between mother's of gifted children's iq and the popualtion of mothers as whole.

#4.34

#A sampling distribution is the collection of all possible samples of a given size from a set population. The mean of a sampling distribution is the mean of the population.
#As the sample size increases the sampling distribution's center more closely resembles the population's center. The shape becomes more normal and the spread becomes smaller. As per the central limit theorem.

#4.40

#a. 10500-9000 / 1000 = 1.5 approx 7%

#b. The distribution will be roughly normal centered about 9000 with a standard deviation of 1000/sqrt(15) = 258.2

#c. 10500-9000 / 258.2 = 5.8 approx 0%

#d. sketch

library(tidyverse)

ggplot(data=data.frame(x=c(6000, 12000)), aes(x)) + stat_function(fun=dnorm, args=list(mean=9000, sd=1000), color='red') + 
  stat_function(fun=dnorm, args=list(mean=9000, sd=1000), xlim=c(10500, 12000), geom='area', alpha=0.5, fill='red') +
  stat_function(fun=dnorm, args=list(mean=9000, sd=258.2), color='blue') + 
  stat_function(fun=dnorm, args=list(mean=9000, sd=258.2), xlim=c(10500, 12000), geom='area', alpha=0.5, fill='blue')

#e. No. Both require nearly normal distributions to give meaningful results. For part c, the 15 elements is no sufficient to garuntee a nearly normal distribution.

#4.48

#If n increases, the standard error will decrease. If the standard error decreases, the z* will increase. This will pull the z* more towards a smaller or larger value. This will have the effect of decreasing the p-value. 
#Logically, a number further from the mean is more significant if the sample size is larger. For example, consider a sample measuring the IQ of people. A sample of 50 people averaging an IQ of 110 (compared to the mean of 100) is less significant than if there were a sample of 500 people with an IQ of 110. 













