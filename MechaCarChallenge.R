library(tidyverse) # import tidyverse

mechaCarData <- read_csv("Resources/MechaCar_mpg.csv") #import MechaCar data
head(mechaCarData) #display first rows of imported data

lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + 
     AWD, data=mechaCarData) #create linear model

summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + 
             AWD, data=mechaCarData)) #generate summary statistics

suspension_coil_data <- read_csv("Resources/Suspension_Coil.csv") #import suspension coil data
head(suspension_coil_data)

summary_coil_data <- suspension_coil_data %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create total summary table
summary_coil_data

lot_summary <- suspension_coil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create lot summary table
lot_summary

t.test(suspension_coil_data$PSI, mu=1500) # run T-test on coils

t.test(subset(suspension_coil_data,Manufacturing_Lot=="Lot1")$PSI, mu = 1500) # Lot1 t-test
t.test(subset(suspension_coil_data,Manufacturing_Lot=="Lot2")$PSI, mu = 1500) # Lot2 t-test
t.test(subset(suspension_coil_data,Manufacturing_Lot=="Lot3")$PSI, mu = 1500) # Lot3 t-test
