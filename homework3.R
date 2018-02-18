library(tidyverse)

#3.2

normal.plot <- ggplot(data=data.frame(x=c(-3,3)), aes(x)) + stat_function(fun=dnorm, args=list(mean=0, sd=1))

#a
normal.plot + stat_function(fun=dnorm, xlim=c(-1.13, 3), geom='area')
pnorm(q=-1.13, mean=0, sd=1, lower.tail=FALSE)

#b 
normal.plot + stat_function(fun=dnorm, xlim=c(-3, .18), geom='area')
pnorm(q=.18, mean=0, sd=1)

#c
normal.plot + stat_function(fun=dnorm, xlim=c(3, 3), geom='area')
pnorm(q=8, mean=0, sd=1, lower.tail=FALSE)

#d
normal.plot + stat_function(fun=dnorm, xlim=c(-.5, .5), geom='area')
pnorm(q=.5, mean=0, sd=1) - pnorm(q=-.5, mean=0, sd=1)

#3.4
#a
#Men's: N(4313, 583) Women's: N(5261, 807)

#b
(4948-4313)/583
(5513-5261)/807

#Leo's finishing time z-score is 1.08 meaning that his time is about 1 standard deviation above the mean finishing times in his group. Mary's is 0.31 meaning that she is approximately 0.31 standard deviation above her groups finishing time.

#c
#Mary performed better than Leo. While both times are bove average, her's has a smaller z score indiciating that she performed better than a larger proportion of her group than Leo did of his group.

#d
pnorm(q=4948, mean=4313, sd=583, lower.tail=FALSE)
#About 14 percent.

#e
pnorm(q=5513, mean=5261, sd=807, lower.tail=FALSE)
#About 37 percent.


#f
#b would remain the same. A z-score is a z-score. The formula does not change based on the distribution. c through e however would change. The linking of z score to a certain proportion of the population is contingent on the data being roughly normally distributed. Without this information there is no consistant way to use the z-score to determine the porportion of racers Leo or Mary performed better than.


#3.18
#a
female.heights <- c(54, 55, 56, 56, 57, 58, 58, 59, 60, 60, 60, 61, 61, 62, 62, 63, 63, 63, 64, 65, 65, 67, 67, 69, 73)

#z-score for 68% is -1 to 1 corresponding to a range of (56.94, 66.1)
length(female.heights[female.heights > 56.94 & female.heights < 66.1]) / 25 #68%
#z-score for 95% is -1 to 1 corresponding to a range of (52.36, 70.69)
length(female.heights[female.heights > 52.36 & female.heights < 70.69]) / 25 #96%
#z-score for 99.7% is -1 to 1 corresponding to a range of (47.78, 75.26)
length(female.heights[female.heights > 47.78 & female.heights < 75.26]) / 25 #68%

#Yes, the data adhears to the 68-95-99.7 rule

#b
qqnormsim <- function (dat) {
  par(mfrow = c(3, 3))
  qqnorm(dat, main = "Normal QQ Plot (Data)")
  qqline(dat)
  for (i in 1:8) {
    simnorm <- rnorm(n = length(dat), mean = mean(dat), 
                     sd = sd(dat))
    qqnorm(simnorm, main = "Normal QQ Plot (Sim)")
    qqline(simnorm)
  }
  par(mfrow = c(1, 1))
}

qqnormsim(female.heights)

#The actual data looks very similar to the simulated data. Most of the values fit nicely on the normal probability plot line with a few upper and lower outliers. It is safe to say that this data is roughly normal.


#3.22
#a
dgeom(9, .02)
#9 failures followed by a success at 2% has a 1.6% chance of occuring

#b
pgeom(100, .02)
#87% chance of 100 successes in a row

#c
#mean 1/.02 = 50
#sd = 49.49747 sqrt(1-p)/p


#d
#mean 1/.05 = 20
#sd sqrt(1-p)/p = 19.49


#e
#As the probability of success (finding a defective piece) decreases, the mean increases. This makes sense as a lower chance of success would indicate more trials before a success. The standard deviation follows this logic as well.

#3.38
#a
dbinom(2, 3, .51)
#about 38% chance

#b
#MMF, MFM, FMM
.51*.51*.49 + .51*.49*.51 + .49*.51*.51

#c
#There is no need to perform seperate calculations for each scenario, account for disjoing probabilities, and sum those values. This would be tedious, repetitive work.


#3.42
#a
dnbinom(7, 3, .15)

#b
#15%. The trials are independent

#c
#The probability calculated in part b is not equivalent to that in part a. We cannot ignore the fact that her 10th serve will, in some scenarios, have a 0% chance of being her 3rd successful serve.








