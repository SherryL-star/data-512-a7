# data-512-a7
Data 512 A7 - Covid-19 Project .  The goal of this project is to explore the impact of Covid-19 mask mandate on local security and whether there is a correlation between the two factors in the city of Hartford, CT, and apply and practice human-centered data science. 



## Introduction
- In the nearly two years since the Covid-19 outbreak, the pandemic is affecting every aspect of our lives. At the same time, some changes have taken place in social security during the pandemic period, which are precisely related to people's daily life.The safety and crime rate of an area are critical to the quality of well-being of local people, and they are also important human-centered concerns. As a human-centered data science project, this study is aimed at exploring the impact of Covid-19 mask mandate on local security and whether there is a correlation between the two factors. The main target location for the research is Hartford city, Connecticut. 
- The results of this project showed that there was no significant correlation between the number of crimes and the number of confirmed cases in Hartford. There is a difference in crimes’ volume before and after the Covid-19 pandemic, but it is not significant. Meanwhile, through this project, I have completed a practice and application of human-centered data science. The research process deepened my understanding of what I learned in class and expanded my knowledge. 



## Data 

### Original Datasets
- [COVID-19 data from John Hopkins University](https://www.kaggle.com/antgoldbloom/covid19-data-from-john-hopkins-university?select=RAW_us_confirmed_cases.csv)
  This is a daily updating version of COVID-19 Data Repository by the Center for Systems Science and Engineering (CSSE) at Johns Hopkins University (JHU).
  
  License: Attribution 4.0 International (CC BY 4.0)

  
 - [Mask Mandates by County from CDC](https://data.cdc.gov/Policy-Surveillance/U-S-State-and-Territorial-Public-Mask-Mandates-Fro/62d6-pm5i)
   This dataset is published by CDC and contains the information of mask madate of each state of the United States.

   License: not specified
   
 - [Crime Incidents of the City of Hartford](https://data.hartford.gov/Public-Safety/Police-Incidents-01012005-to-Current/889t-nwfu)
   This dataset serves as the official record of reported crimes that have occurred in the City of Hartford since 2005 to the present. It contains a division by regions and categories of crime.
   
   License: Creative Commons license (CC0 1.0 Universal)
 - [Covid-19 Cases by Town, Connecticut](https://data.ct.gov/Health-and-Human-Services/COVID-19-Tests-Cases-and-Deaths-By-Town-/28fr-iqnx)
   This dataset includes reported COVID-19 cases, tests, and associated deaths among Connecticut residents.
   
   License: not specified


  ### Output Dataset
  
  - `Hartford_mask_cases`: Combine the data from [Mask Mandates by County from CDC](https://data.cdc.gov/Policy-Surveillance/U-S-State-and-Territorial-Public-Mask-Mandates-Fro/62d6-pm5i) and [COVID-19 data from John Hopkins University](https://www.kaggle.com/antgoldbloom/covid19-data-from-john-hopkins-university?select=RAW_us_confirmed_cases.csv), then get the daily Covid-19 infection rate of Hartford county, CT with the information of mask mandate.
 
     650 rows * 3 columns
     Columns: date, Daily_Case_Rate, Face_Masks_Required_in_Public
    
  - `HC_cases_mask`: This dataset records the daily Covid-19 confirmed cases in Hartford city,CT during the period of mask mandate.
  
     264 rows * 2 columns
     Columns: Date, Daily Confirmed Cases
   
  - `crime_2019_2020`: This dataset records the daily total number of crimes in Hartford city,CT during the period of mask mandate and the the same period in previous year. 
  
     365 rows * 3 columns
     Columns: Date, 2019_dailyCrime, 2020_dailyCrime  
     
  - `HC_case_crime_2020`: This dataset combines the data from [Crime Incidents of the City of Hartford](https://data.hartford.gov/Public-Safety/Police-Incidents-01012005-to-Current/889t-nwfu) and [Covid-19 Cases by Town, Connecticut](https://data.ct.gov/Health-and-Human-Services/COVID-19-Tests-Cases-and-Deaths-By-Town-/28fr-iqnx) together, and records the daily number of crimes and Covid-19 confirmed cases in Hartford city,CT during the period of mask mandate. 
  
     360 rows * 3 columns
     Columns: Date, Case_Number (the daily number of crimes), Daily Confirmed Cases 
     
  - `Category_Crime`: 45 crime categories in Hartford city, and the total amount of crimes in each category.
    
    45rows * 3 columns
    Columns: Category, Crime_Number_2019, Crime_Number_2020
    
  - `regionCrime_compare`: 17 regions in Hartford city, and the total amount of crimes in each region.
  
     17 rows * 3 columns
     Columns: Neighborhood, Case_Number_2019, Case_Number_2020
