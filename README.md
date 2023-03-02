# Vehicle_Production_Analysis

## Linear Regression to Predict MPG

- According to our linear regression summary, vehicle length, ground clearance, and vehicle weight provide a non-random amount of variance to the mpg values in the dataset. In future tests, spoiler angle and AWD may not need to be considered in the regression analysis. 

- Since the p-value for this test is significant, there is sufficient evidence to reject our null hypothesis. This model is effective at predicting vehicle fuel efficiency; roughly 68% of miles-per-gallons predictions will be correct under this model. 

![image](https://github.com/scallina/Vehicle_Production_Analysis/blob/main/images/R_Output.png)

## Summary Statistics on Suspension Coils

- The design specifications for the client's suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Our data communicates that the 3rd maunfacturing lot in our dataset does not meet this requirement and should be investigated. 

![image](https://github.com/scallina/Vehicle_Production_Analysis/blob/main/images/total_summary.png)
![image](https://github.com/scallina/Vehicle_Production_Analysis/blob/main/images/lot_summary.png)

## T-Tests on Suspension Coils
We utilized individual t-tests to determine if the population mean of 1500 PSI was different from: 
1) the entire sample of our coil data (lots 1, 2, and 3 combined) 
and 
2) the individual lot samples. 

![image](https://github.com/scallina/Vehicle_Production_Analysis/blob/main/images/t-test%20(1%2C2%2C3).png)

- The sample consisting of all 3 lots produced a p-value of .06, so we can say that the combined sample was not statistically significant from the populaiton. 

![image](https://github.com/scallina/Vehicle_Production_Analysis/blob/main/images/t-test(lot1).png)
![image](https://github.com/scallina/Vehicle_Production_Analysis/blob/main/images/t-test(lot2).png)
![image](https://github.com/scallina/Vehicle_Production_Analysis/blob/main/images/t-test(lot3).png)

- since only lot 3 has a p-value below .05, we can conclude that only lot 3 is statistically significant from the population mean of 1500 PSI. 

## Study Design: MechaCar vs Competition
Below, you'll find an overview of a future study that could be used to compare my client's car manufactoring operation to that of potential competitor:

### Metrics of Interest
For this study, I was curious about the how my client could best promote their brand as an affordable performance vehicle manufacturer. To do this, I chose to focus on the relationship between vehicle performance (horsepower and quarter-mile time), fuel efficiency (highway mpg), and vehicle sticker price ($) as they relate to car sales (units sold per year). I would conduct this study on multiple vehicle models across my client's and competitors' brands to determine which performance and affordability factors my client should focus on during the production of different vehicle types.  

Metrics:
- retail price ($)
- vehicle horsepower
- quarter mile time (seconds)
- highway miles per gallon (mpg)
- city miles per gallon (mpg)

### Null and Alternative Hypotheses
#### H0 : The slope of the linear model is zero, or m = 0, meaning that our metrics do not effectively predict vehicle sales.  
#### Ha : The slope of the linear model is not zero, or m ≠ 0, meaning some combination of our metrics are effective at predicting vehicle sales.

### Statistical Tests I Would Utilize
I would utilize multiple linear regression to determine which performance and afforability factors serve as the strongest predictors for vehicle sales. 

### Data Necessary for the Study
we would require the following data associated with each car model and make we chose to study:
- retail price
- vehicle horsepower
- quarter mile time (seconds)
- highway miles per gallon (mpg)
- city miles per gallon (mpg)
