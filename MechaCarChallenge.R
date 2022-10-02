library(dplyr)

## Linear Regression to Predict MPG

Mecha_data <- read.csv('MechaCar_mpg.cvs') #import dataset

# Multiple Linear regression
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_data) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=Mecha_data)) #generate summary statistics



## Summary Statistics on Suspension Coils

suspension_data <- read.csv('Suspension_Coil.csv') #import dataset

total_summary <- suspension_data %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table

lot_summary <- suspension_data %>% group_by(Manufacturing_Lot) %>%  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI)) #create summary table


## T-Tests on Suspension Coils

# across all lots
t.test(suspension_data$PSI,mu=1500) #compare sample versus population means
# Lot 1
t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot=="Lot1"),mu=1500) #compare Lot 1 PSI versus population mean
# Lot 2
t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot=="Lot2"),mu=1500) #compare Lot 2 PSI versus population mean
# Lot 3
t.test(subset(suspension_data$PSI, suspension_data$Manufacturing_Lot=="Lot3"),mu=1500) #compare Lot 3 PSI versus population mean
