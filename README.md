# data-512-a7
Data 512 A2 - Bias in Data Assignment .  The goal of this assignment is to explore the concept of bias through data on Wikipedia articles - specifically, articles on political figures from a variety of countries.


## API 
- This project using a machine learning system called ORES - "Objective Revision Evaluation Service", which is a machine learning tool that can provide estimates of Wikipedia article quality
- The ORES REST API [documentation](https://ores.wikimedia.org/v3/#!/scoring/get_v3_scores_context_revid_model), provide access to a set of scoring models for wikipedia articles.

- Term of Use
The ORES REST API ptovided by the platfor of Swagger, it is free to use and licensed under the Apache 2.0 License.
Please review the Swagger Open Source License [terms and conditions for use](https://swagger.io/license/) for more information.



## Data 

### Original Datasets
- [Politicians by Country from the English-language Wikipedia](https://figshare.com/articles/dataset/Untitled_Item/5513449)
  This dataset contains data on most English-language Wikipedia articles within the category "Category:Politicians by nationality" and subcategories.
  
  Columns:
  -  "country", containing the sanitised country name, extracted from the category name;
  -  "page", containing the unsanitised page title.
  -  "rev_id", containing the edit ID of the last edit to the page.
  
  License: under the CC-BY-SA 4.0 license
  
 - [World Population Data Sheet](https://www.prb.org/international/indicator/population/table/)
   This dataset is published by the Population Reference Bureau and contains the population data of each country, and sub-region around the world in 2019.
  
   Columns:
   -  "FIPS", FIP code of each country and regions;
   -  "Name", name of countries and regions.
   -  "Type", specify 3 categories of each item: World, Sub-Region, Country.
   -  "TimeFrame": 2019
   -  Data(M): population data, in millions
   -  Population: population data
  
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
