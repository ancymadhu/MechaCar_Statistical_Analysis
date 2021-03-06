# MechaCar_Statistical_Analysis

<img src="https://user-images.githubusercontent.com/73450637/107601897-ecdd0780-6bf5-11eb-8d8d-afdae57e3aeb.png" width="400" height="250">

## Overview of the Project

To perform:
* Multiple linear regression analysis
* Collect summary statistics on the pounds per square inch
* Run t-test and Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Resources

* Language: R
* Software: RStudio
* Library: dplyr, tidyverse
* Data Sources: MechaCar MPG dataset, Suspension Coil dataset

## Technical Analysis

<img src="https://user-images.githubusercontent.com/73450637/107611482-1310a080-6c12-11eb-9fec-7d5b27572496.jpg" width="200" height="150">

### I. Linear Regression to Predict MPG

#### a. Variables/coefficients providing a non-random amount of variance to the mpg values in the dataset

In the picture below, inside the highlighted box (Pr(>|t|)) is the variable that represents the probability that each coefficient contributes a random amount of variance to the linear model.

![1](https://user-images.githubusercontent.com/73450637/107611008-fb84e800-6c10-11eb-8565-6be23d0b15c3.png)

#### b. Slope of the linear model 

The p-value of our linear regression analysis is 2.767e-06, which is much smaller than our assumed significance level of 0.05%. Therefore, we can state that there is sufficient evidence to reject null hypothesis, which means that the slope of our linear model is not zero.

![2](https://user-images.githubusercontent.com/73450637/107612215-bf06bb80-6c13-11eb-8326-c8a8331d97b1.png)

#### c. MPG Prediction

In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model.  When an intercept is statistically significant, it means there are other variables and factors that contribute to the variation in quarter-mile time that have not been included in our model. But lack of significant variables is evident so we cannot say that this linear model will predict mpg of MechaCar prototypes effectively.

### II. Summary Statistics on Suspension Coils

a. Total Summary

RScript created the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

![3](https://user-images.githubusercontent.com/73450637/107681051-95c64980-6c6c-11eb-9a57-8e43524d1611.png)

b. Lot Summary 

RScript created a lot_summary dataframe to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

![4](https://user-images.githubusercontent.com/73450637/107681056-96f77680-6c6c-11eb-99c5-9842c00bbc21.png)

#### Design Specification Conclusion

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. According to total_summary, the Variance is 62.29356, which meets the design specificatio. But when considering the lot summary, the variance of Lot 3 170.28 which is above 100, so it does not meet the specification individually. 

### III. T-Tests on Suspension Coils

T-test is used to compare the mean of one dataset to another under a few assumptions. 

First RScript is written for t-test that compares all manufacturing lots against mean PSI of the population. Three more RScripts are written to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

The figure below shows the outcome altogther. 

![e](https://user-images.githubusercontent.com/73450637/107693347-032da680-6c7c-11eb-909a-ebe54f7631ac.png)

From this we can conclude that the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

### IV. Study Design: MechaCar vs Competition

Inorder to quantify how MechaCar performs against competition, a study can be designed that involves *metrics like city or highway fuel efficiency or safety rating.

###### Hypothesis: Null and Alternative

After determining which factors are key for the MechaCar's genre:

* Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors for its genre.
* Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors for its genre.


###### Statistical Test for Hypothesis

The choice is analysis of variance (ANOVA) test, which is used to compare the means of a continuous numerical variable across a number of groups (or factors in R). Depending on your dataset and questions you wish to answer, an ANOVA can be used in multiple ways and that is the reason why I prefer this test. 


###### Data Needed to Run Statistical Test

* Fuel efficiency of top brand cars in city and highway.
* Safety rating of each brands. 
