#Practice: 7.23, 7.25, 7.29, 7.39
#Graded: 7.24, 7.26, 7.30, 7.40

#7.24

#a. There is a positive correlation between the number of calories in the menu item and the number of carbs.

#b. The explanatory variable is calories and the response variable is the number of carbs. 

#c. We may want to make a prediction on the number of carbs in items that only have their calorie counts posted. 

#d. No. The condition of constant variability is not met. The first graph shows that as calories grow, the variability in the number of carbs increases.

#7.26

#a.

mean.shoulder.girth <- 107.2
sd.shoulder.girth <- 10.37
mean.height <- 171.14
sd.height <- 9.41
correlation <- 0.67

slope <- sd.shoulder.girth / sd.height * correlation

intercept <- -slope * mean.shoulder.girth + mean.height

slope
intercept

#b. Slope: For every inch of shoulder girth, a person is approximately 0.74cm taller. The y-intercept represents the expected height if the shoulder girth were 0cm.

#c. 0.4489 appoximately 45% of the variation in the original height data can be explained by the corresponding shoulder girth.
correlation^2

#d. The student would have an expected height of approximately 165.82 cm
estimate <- slope * 100 + intercept

#e. The residual is approx 5.82cm. That is, our prediction overestimated by 5.82cm.
estimate - 160

#f. No. Linear regressions predictive ability is poor when an input is used that falls far outside the range of inputs the regression was based on. In this case, the 56cm input is well below the smallest shoulder girth of about 85cm. This will make the output unreliable.

#7.30

#a. heart weight = body weight * 4.034 - 0.357

#b. With a body weight of 0kg, a cats expected heart weight would be -0.357g. The nonsensical output of this data is due to the nonsensical input. The regression will only prove to be meaningful if input are generally in the range of the data's inputs.

#c. For every kg of body weight increase in a cat, we would expected their heart to weight an addition 4.034g.

#d. 64.41% of the variation in the heart weight of the cats in the data set can be explained by the cat's body weight.

#e. Approx 0.8
sqrt(.6466)

#7.40

#a. The slope is 0.13

4.13 * 0.0322

#b. Yes. With a p-value of essentially 0 we reject the null hypothesis that there is no relationship. There is evidence to suggestion a positive relationship between beauty and teacher ranking.

#c. 

#Linearity. The data should show a linear trend. - Inconclusive. The trend may be present but incredibly small. There is no apparent linearity.

#Nearly normal residuals. Generally the residuals must be nearly normal. - The residuals appear skewed. This criteria is not met.

#Constant variability. The variability of points remain roughly constant. - The residuals show a roughly constant level of variability.

#Independent observations. - The time series graph show no apparent pattern in residuals. Independence is a safe assumption.
















