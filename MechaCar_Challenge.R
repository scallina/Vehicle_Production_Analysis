setwd("~/Desktop/Bootcamp/16-1_R/Vehicle_Production_Analysis")

library(dplyr)

dataframe <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #import car manufacturing data

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=dataframe) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=dataframe)) #perform linear regression summary

