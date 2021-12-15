#####correletioan ########
install.packages("ggpubr")
library("ggpubr")
cases_crime <- read.csv(file = 'HC_case_crime_2020.csv')

res <- cor.test(cases_crime$Case_Number, cases_crime$Daily.Confirmed.Cases, 
                method = "pearson")
res 

library("ggpubr")
ggscatter(cases_crime, x = "Case_Number", y = "Daily.Confirmed.Cases", 
          add = "reg.line", conf.int = TRUE, 
          cor.coef = TRUE, cor.method = "pearson",
          xlab = "crime number", ylab = "Daily Confirmed Cases") 


cases_crime_special <- read.csv(file = 'HC_special.csv')
res_special <- cor.test(cases_crime_special$Case_Number, cases_crime_special$Daily.Confirmed.Cases, 
                method = "pearson")
res_special

########## Normal Distribution #####
hist(cases_crime$Case_Number)
qqnorm(cases_crime$Case_Number, main ="QQ plot")
qqline(cases_crime$Case_Number)

hist(cases_crime$Daily.Confirmed.Cases)
qqnorm(cases_crime$Daily.Confirmed.Cases, main ="QQ plot")
qqline(cases_crime$Daily.Confirmed.Cases)

#############Z-test #################
z.05=qnorm(0.975)
z.05
z.05=qnorm(0.025)
z.05
###################################

crime_compare <- read.csv(file = 'crime_2019_2020.csv')
z=(mean(crime_compare$X2020_dailyCrime)-mean(crime_compare$X2019_dailyCrime))/sqrt((sd(crime_compare$X2020_dailyCrime)^2/353)+(sd(crime_compare$X2019_dailyCrime)^2/365))   
print(z)
0.5-pnorm(z)

critical_value=1.96
lower=(mean(crime_compare$X2020_dailyCrime)-mean(crime_compare$X2019_dailyCrime))-critical_value*sqrt((sd(crime_compare$X2020_dailyCrime)^2/353)+(sd(crime_compare$X2019_dailyCrime)^2/365)) 
upper=(mean(crime_compare$X2020_dailyCrime)-mean(crime_compare$X2019_dailyCrime))+critical_value*sqrt((sd(crime_compare$X2020_dailyCrime)^2/353)+(sd(crime_compare$X2019_dailyCrime)^2/365)) 
print(lower)
print(upper)

########## Normal Distribution #####
hist(crime_compare$X2020_dailyCrime)
qqnorm(crime_compare$X2020_dailyCrime, main ="QQ plot-Mask Mandate")
qqline(crime_compare$X2020_dailyCrime)

hist(crime_compare$X2019_dailyCrime)
qqnorm(crime_compare$X2019_dailyCrime, main ="QQ plot- Pre-Mask Mandate")
qqline(crime_compare$X2019_dailyCrime)
########