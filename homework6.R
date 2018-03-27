#Practice: 6.5, 6.11, 6.27, 6.43, 6.47
#Graded: 6.6, 6.12, 6.20, 6.28, 6.44, 6.48

#6.6

#a. False. We are 100% confident that exactly 46% of the sample support the decision.
#b. True. This is the accurate use of a confidence interval.
#c. False. The confidence interval describes the population proportion, not other confidence intervals.
#d. False. If we are less confident in our answer, we can select a smaller range of values. In order to be more confident, we must select more values.

#6.12
#a. This is the sample statistics. 48% represents the amount of people in the sample that are in favor of legalization.
#b. 
n <- 1259
p <- 0.48

n*p
n*(1-p)

# 1. This is less than 10% of the population. We can assume an independence. np and n(1-p) are greater than 10. The confidence for inference are met.

ME <- sqrt(p*(1-p)/n)*1.96

p - ME
p + ME

#It can be stated with 95% confidence that the proportion of Americans that support marijuana legalization is between 45.24% and 50.76%

#c. Yes. The conditions for inference have been met in part b. Thus normality can be assumed.

#d. Yes. Percentages including above the 50% mark are included in the confidence interval. This is a fair assessment.

#6.20

#1.96*sqrt(0.48*(1-0.48)/n) = 0.02, n=2398

#2398 Americans would need to be surveyed.

#6.28

pc <- 0.08
nc <- 11545
po <- 0.088
no <- 4691

CV <- 1.96

pc*nc
(1-pc)*nc
po*no
(1-po)*no

# 1. This is less than 10% of the population. We can assume an independence. np and n(1-p) are greater than 10. The confidence for inference are met.

ME <- sqrt(pc*(1-pc)/nc + po*(1-po)/no)

pd <- po-pc

pd + ME
pd - ME

#It can me stated with with 95% that the difference in percentage of Oregan residents vs California residents who are sleep deprived is between 0.3% and 1%


#6.44


#a H0: uw = uc = ud = uo HA: uw != uc != ud != uo

#b. We should use a chi-squred test to determine whether or not to reject the null hypothesis.

#c. The smapling method is a simple random sample. The variables are categorical. The expected value of observations in each level is at least 5.

.048*426

#d. 

found <- c(4, 16, 61, 345)
expected <- c(20.448, 62.622, 168.696, 174.234)

chi <- sum((found - expected)^2 / expected)

# With 3 degrees of freedom, the p value is less than 0.001

#With a p-value so much we reject the null hypothesis. It can be stated with strong confidence that barking deer prefer to forage in certain habitats.

#6.48

#a. A chi-squared test is appropriate.

#b. H0: u1week = u2-6week = u1day = u2-3day = u4+day HA: u1week != ...

#c. Approximately 5.14% of women in the sample suffer from depression while approximately 94.86% do not.

2607/50739
48132/50739

#d. Expected value: 339.9854 A total of appoximately 3.2 is added to the test statistic.
expected <- 6617*2607/50739
observed <- 373

(observed-expected)^2 / expected

#e. With a chi-squared of 20.93 and 4 degrees of freedom the p-value is less than 0.001

#f. With a p-value less than 0.001 we reject the null hypothesis. There is strong evidence to suggest that the there is a relationship between coffee consumption and depression in women.

#g. Yes I do. The researchers have found a correlation between the variables but they have no found causation. That is, there is no evidence to suggest that drinking more coffee reduces
# depression. There could be an underlying or confounding variables. For example, women who lead fulfilling and busy lives are both less likely to have depression and more likely to need coffee.














