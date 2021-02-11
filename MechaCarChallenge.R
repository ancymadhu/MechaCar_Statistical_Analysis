# DELIVERABLE 1

#Loading the library package
library(dplyr)
library(tidyverse)

#Importing and reading the csv file as a DataFrame
mpg_dataset <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#Generating multiple linear regression model
lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars)

#Determining the p-value and the r-squared value for the linear regression model
summary(lm(qsec ~ mpg + disp + drat + wt + hp,data=mtcars))

# DELIVERABLE 2

#Importing and reading the csv file as a DataFrame
suspension_dataset <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#Creating total summary DataFrame
total_summary <- suspension_dataset %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

#Creating lot summary DataFrame
lot_summary <- suspension_dataset %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

# DELIVERABLE 3

#Performing t-tests
t.test(suspension_dataset$PSI,mu = 1500)

# Peform t-test on Lot 1
t.test(subset(suspension_dataset,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)

# Peform t-test on Lot 2
t.test(subset(suspension_dataset,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)

# Peform t-test on Lot 3
t.test(subset(suspension_dataset,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)

