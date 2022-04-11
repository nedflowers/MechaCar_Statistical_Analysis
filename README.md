# MechaCar_Statistical_Analysis

## Project Overview

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. Said company’s upper management has summoned their data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help AutosRUs data-analytical team do the following:

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll - write a summary interpretation of the findings.


## Linear Regression to Predict MPG
#### Coil Data Summary Table
<p align="left">
  <img width="600" height="100" src="https://github.com/nedflowers/MechaCar_Statistical_Analysis/blob/main/images/coil_data_summary.png">
</p>

In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle weight and horsepower (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model.

#### Summary Output
<p align="left">
  <img width="460" height="300" src="https://github.com/nedflowers/MechaCar_Statistical_Analysis/blob/main/images/multi_linear.png">
</p>
In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle weight and horsepower (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model.

#### According to the results, our multi linear model is:
```
mpg = 6.27 * vehicle_length + 1.25e-3 * vehicle_weigth + 6.88e-2 * spoiler_angle -3.41 * AWD + 3.55 * ground_clearance - 1.04e+2

```
  Therefore, the slope is not zero.

This linear model accurately predicts the mpg of MechaCar prototypes because R-squared is 0.71. Therefore, 71% of the variations in mpg can be explained by changes in the vehicle length, the vehicle weight, the spoiler angle, the drivetrain and the ground clearance. We can consider the variables as hvaing a strong correlation in our model.

## Summary Statistics on Suspension Coils
#### Global Sample Summary
<p align="left">
  <img width="540" height="250" src="https://github.com/nedflowers/MechaCar_Statistical_Analysis/blob/main/images/global_samp.png">
</p>

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Globally, the PSI is within our scope for all manufactures at 62.3 psi. On the lot level, Lot 1 and Lot 2 are within specs with variances of 0.98 and 7.5 psi, respectively. On the other hand, Lot 3 is out of our scope with a variance of 170.3 psi.

## T-Tests on Suspension Coils
#### Lot Summary
<p align="left">
  <img width="700" height="180" src="https://github.com/nedflowers/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.png">
</p>
Assuming our significance level was the common 0.05 percent, at 0.06028, our p-value is above our significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we would state that the two means are statistically similar.

#### Lot 1
<p align="left">
  <img width="900" height="420" src="https://github.com/nedflowers/MechaCar_Statistical_Analysis/blob/main/images/lot1.png">
</p>
A review of the results of the T-test for the suspension coils for Lot 1 shows that the mean is not statistically different from the population's, and the p-value is 1, not low enough for us to reject the null hypothesis.

#### Lot 2
<p align="left">
  <img width="900" height="420" src="https://github.com/nedflowers/MechaCar_Statistical_Analysis/blob/main/images/lot2.png">
</p>
A review of the results of the T-test for the suspension coils for Lot 2 shows that the mean is not statistically different from the population's, and the p-value is 0.6072, not low enough for us to reject the null hypothesis.

#### Lot 3
<p align="left">
  <img width="900" height="420" src="https://github.com/nedflowers/MechaCar_Statistical_Analysis/blob/main/images/lot3.png">
</p>
A review of the results of the T-test for the suspension coils for Lot 3 shows that they are slightly statistically different from the population mean, and the p-value is just low enough (0.0417) for us to reject the null hypothesis. This lot may be need to be discarded, or at least more closely evaluated.

## Study Design: MechaCar vs Competition
With gas-prices skyrocketing to $5 per gallon and no end in sight, understandably, consumers who commute from outside-city limits are concerned about how much mileage their vehicles are getting per gallon. Many are looking to upgrade their vehicles to something more eco-friendly, that also saves them a few bucks each time they fill up. With MechaCar, AutosRUs wants to provide consumer's with a vehicle whose fuel efficency is competitive against other auto manufacturers' in the same vehicle class.

### Metrics to Test
To perform our study, we will need to evaluate gas prices (current and historical) as well as combined fuel economy or mpg.  Additionally, we should compare a vehicle’s cylinder numbers to fuel efficiency performance (miles traveled, average speed). 

### Null and Alternate Hypothesis
H0: MechaCar prototypes' average fuel efficiency is not like competitor's vehicles in the same vehicle class.
 Ha: MechaCar prototypes' average fuel efficiency is statistically above or below that of competitor vehicles.

### Statistical Test Used
For this study, we would use multiple linear regression because it tests how much variance in the dependent variable is accounted for in a linear combination of independent variables. 

### Data Needed
To analyze fuel economy, the city and highway fuel economies must first be combined into one variable (mpg). According to the EPA, combined fuel economy is an average calculated by weighing the City value by 55% and the Highway value by 45%. We will need to gather these metrics for each manufacturing company included in our comparative study. Additionally, we will need to group these by cylinder-size to assert we are testing from the correct sample groups. 
