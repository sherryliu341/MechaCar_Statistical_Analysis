# MechaCar_Statistical_Analysis
MODULE 15 Challenge - R Language and Statistics


## [Linear Regression to Predict MPG](Images/1_lmSummary.png)

  - Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
      Of the variables tested (vehicle_length, vehicle_weight, spoiler_angle, ground_clearance and AWD), only vehicle length (p= 2.60e-12) and ground clearance (p= 5.21e-08) showed a statistically significant correlation with MPG, in this dataset.
      
  
  - Is the slope of the linear model considered to be zero? Why or why not?
      The p-value of our multiple linear regression analysis is 5.35e-11, which is very small and statistically significant (at the .001% level).  Therefore, we can reject the null hypothesis, which means that the slope of our linear model is not zero.  A significant linear relationsip exists.
  
  - Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
      From our linear regression model, the r-squared value is 0.7149, which means that roughly 71% of the variablilty of our dependent variable (MPG) is explained using this linear model.  While this is fairly predictive, our Intercept is also statistically significant (p= 5.08e-08), so 1) the significant features (vehicle length and ground clearance) may need scaling or transforming to help improve the predictive power of the model, and/or 2) there may be other variables that can help explain the variability of MPG that have not been included in our model.


## Summary Statistics on Suspension Coils

   - The design specifications for MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.  Overall, as shown in our [PSI Total Summary](Images/2_total_summary.png), metrics are within acceptable ranges for manufacturing lots in total.  However, for individual lots, as shown in the [PSI Lot Summary](Images/2_lot_summary.png), there is unacceptable variation in PSI.  Specifically, the PSI variance in Manufacturing Lot 3 shows a variance of 170 PSI, well above the maximum allowed.  Lot 3, therefore, does not meet the design specifications.


## T-Tests on Suspension Coils

   - T-Tests were performed comparing all manufacturing lots (in total) against the known mean PSI of the data population (1500 psi).  T-tests were also performed against the population mean PSI (1500 psi) for each individual manufacturing lot.
   - [Across all lots](Images/3_all_lots.png), the t-tests revealed a mean PSI of 1498.78, which was NOT statistically different (p-value = 0.06028) from the population mean PSI of 1500 psi.   Similarly, [Manufacturing Lot 1](Images/3_Lot1.png) (with a mean of 1500 PSI and a p-value of 1) and [Manufacturing Lot 2](Images/3_Lot2.png) (with a mean of 1500.2 PSI and a p-value of 0.6072) were NOT statistically different from the population mean PSI of 1500.  [Manufacturing Lot 3](Images/3_Lot3.png) (with a mean of 1496.14 PSI and a p-value of 0.04168), however, was found to be statistically significantly different from the population mean PSI.  
  
  
## Study Design: MechaCar vs Competition

We would perform a statistical comparison of car brands based on performance, cost and fuel efficiency metrics.  Because MechaCar is being marketed as a cost-effective sports-luxury car, we propose to start by comparing cost to acceleration (0-60mph times).  The null hypothesis (H0) is that there is no correlation between cost and acceleration.  The alternative hypothesis (Ha) is that cost and acceleration do have a correlation.  For the initial statistical test, we'd run a linear regression to visualize any obvious and /or significant correlation between cost and acceleration for all cars on the market this year.  For this test, we'd need to have MSRP and mean 0-60 acceleration data for the cars in our analysis.  To add to this analysis, we'd then calculate acceleration/cost ratios for all cars in the analysis and run a t-test to determine whether MechaCar's acceleration/cost ratio is significantly different from the mean acceleration/cost ratio for all cars in the study.

Beyond this initial analysis, we'd expect to perform some ANOVA testing of other performance metrics against vehicle class, transmission types and cost categories.  ANOVA testing would be appropriate since it's suited to test the means of a single dependent variable across independent categorical variables with multiple groups.
