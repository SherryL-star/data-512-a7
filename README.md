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
  
  - `wp_wpds_politicians_by_country`: combine the information from `page_data.csv` and `WPDS_2020_data.csv`, with the data of population and political articles of each country.
    
    45712 rows * 5 columns
  
     Columns:
     - 'country': country name 
     - 'article_name' : the page title of political articles of each country
     - 'revision_id': the edit ID of the last edit to the page
     - 'article_quality_est': the score level of each political article : 
         - FA - Featured article
         - GA - Good article
         - B - B-class article
         - C - C-class article
         - Start - Start-class article
         - Stub - Stub-class article
     - 'country_population': the population data of each country
         
  - `wp_wpds_countries-no_match`: list the countries and their political articles from `page_data.csv`, which had no matches in `WPDS_2020_data.csv`
  
     715 rows * 3 columns
  
     Columns:
     - 'country': country name 
     - 'page' : the page title of political articles of each country
     - 'revision_id': the edit ID of the last edit to the page
