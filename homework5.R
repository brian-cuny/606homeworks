#Chapter 5 - Inference for Numerical Data
#Practice: 5.5, 5.13, 5.19, 5.31, 5.45
#Graded: 5.6, 5.14, 5.20, 5.32, 5.48

#5.6

#Sample Mean: 65+77 / 2 = 71
#Margin of Error: 6
#Sample Standard Deviation: 6 = 1.71*s/sqrt(25) s=17.54

#5.14

#a 25 = 1.645*250/sqrt(n) n=271


#b: Larger. To be more confident in the final solution with the same margin of error, more sample must be taken.


#c 25 = 2.576*250/sqrt(n) n=664


#5.20

#a. No. Both IQR cover the same area and the difference between the two is roughly centered around 0.

#b. Yes. 

#c. H0: udiff = 0 Ha: udiff != 0

#d.  The observations are independent and are more than 30 observations.

#e. u=-0.545 se=8.887/sqrt(200)=.628

# .545 - 0 / .628 = .867 df=199 smaller than all values on the table --> not significant do not reject the null hypothesis

#f We may have made a type 2 error, failing to reject when we should have. That is, we asserted there was no evidence of a difference when it fact there was.

#g Yes. All confidence intervals should include 0 as that would indicate that there is no difference between the two populations.



#5.32

# H0: udiff = 0 Ha: udiff != 0

# udiff = 19.85-16.12 = 3.73  SE = sqrt(3.58^2/26 + 4.51^2/26) = 1.129 df=25

#t* = 3.73 - 0 / 1.129 = 3.303 this statistic is larger than all associated significance values. We reject the null hypothesis. There is strong evidence to suggest that there is a difference in city mpg


#5.48

#a. H0: u  <hs = u hs = u jrc = u ba = u grad HA: The avearge varies across some or all groups.

#b. All observations must be independent, the data in each group must be nearly normal, and the variance within each gorup must be approximately equal.

#c. 

#           DF    Sum SQ    Mean Sq   F Value   Pr(>F)
#degree     4     2006.16    501.54    2.19      .0682
#residuals  1168  267382     228.92
#total    

#d. With a p-value of .0682 being above .05 (but below .1) there is evidence, although not strong, to suggest a difference in the mean number of hours worked based on level of education obtained.


