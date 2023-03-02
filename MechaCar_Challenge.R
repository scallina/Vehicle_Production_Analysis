setwd("~/Desktop/Bootcamp/16-1_R/Vehicle_Production_Analysis")

library(dplyr)

car_dataframe <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #import car manufacturing data

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_dataframe) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=car_dataframe)) #perform linear regression summary

coils_dataframe <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F) #import suspension coil test data

total_summary <- coils_dataframe %>%
  summarise(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI), n = n()) #create summary table of PSI from coils dataset

lot_summary <- coils_dataframe %>% group_by(Manufacturing_Lot) %>%
  summarise(mean = mean(PSI), median = median(PSI), variance = var(PSI), sd = sd(PSI), n = n()) #apply summary table to all manufacturing lots

t.test((coils_dataframe$PSI),mu=mean((1500))) #t-test for PSI of all lots against population mean of 1500

lot1 <- coils_dataframe[coils_dataframe$Manufacturing_Lot == "Lot1",] #filter coil data into lot 1 subset
lot2 <- coils_dataframe[coils_dataframe$Manufacturing_Lot == "Lot2",] #filter coil data into lot 2 subset
lot3 <- coils_dataframe[coils_dataframe$Manufacturing_Lot == "Lot3",] #filter coil data into lot 3 subset

t.test((lot1$PSI),mu=mean((1500))) #t-test for PSI of lot 1 against population mean of 1500
t.test((lot2$PSI),mu=mean((1500))) #t-test for PSI of lot 2 against population mean of 1500
t.test((lot3$PSI),mu=mean((1500))) #t-test for PSI of lot 3 against population mean of 1500
