# Google Data Analytics Capstone: Complete a Case Study
### [Case study](https://drive.google.com/file/d/1wLs7v5_E5guSYkQTAeOeb9_8Ocn5W-0Y/view?usp=sharing): How does a bike-share navigate speedy success?
## Introduction
I am a junior data analyst on the marketing analytics team at Cyclistic, a bike-share company based in Chicago. My current task involves answering business questions by following the data analysis process, which includes the steps: Ask, Prepare, Process, Analyze, Share, and Act.
### Quick links
Data Source: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) [accessed on 01/06/2024]

SQL Queries:
01. [Data Types Changing](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/blob/main/01.%20Data%20Types%20Changing.sql)
02. [Data Combining](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/blob/main/02.%20Data%20Combining.sql)
03. [Data Exploration](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/blob/main/03.%20Data%20Exploration.sql)
04. [Data Cleaning](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/blob/main/04.%20Data%20Cleaning.sql)
05. [Data Analysis](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/blob/main/05.%20Data%20Analysis.sql)

Data Visualizations: [Tableau](https://public.tableau.com/views/cyclistic-trip-data/TripsatEndingStation?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)
## Background
### Cylistic
A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use the bikes to commute to work each day.

Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.

Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a solid opportunity to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.
### Scenario
I am a junior data analyst on the marketing analytics team at Cyclistic, a bike-share company in Chicago. The director of marketing believes that maximizing the number of annual memberships is crucial for the company’s future success. To achieve this, your team aims to understand the differences in how casual riders and annual members use Cyclistic bikes. These insights will help your team design a new marketing strategy to convert casual riders into annual members. However, before proceeding, Cyclistic executives need to approve your recommendations, which must be supported by compelling data insights and professional data visualizations.

## Ask
### Business Task
Devise marketing strategies to convert casual riders to members.
### Analysis Questions
Three questions will guide the future marketing program:
- How do annual members and casual riders use Cyclistic bikes differently?
- Why would casual riders buy Cyclistic annual memberships?
- How can Cyclistic use digital media to influence casual riders to become members?
  
Moreno has assigned me the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?
## Prepare
### Data Source
I will use Cyclistic’s historical trip data to analyze and identify trends from **Apr 2020 to Apr 2024** which can be downloaded from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html). The data has been made available by Motivate International Inc. under this license. This is public data that can be used to explore how different customer types are using Cyclistic bikes. But note that data-privacy issues prohibit from using riders’ personally identifiable information. This means that we won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

### Data Organization
There are 48 files with naming convention of YYYYMM-divvy-tripdata and each file includes information for one month, such as the ride id, bike type, start time, end time, start station, end station, start location, end location, and whether the rider is a member or not. The corresponding column names are ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng and member_casual.

### Data Types
| ride_id | rideable_type | started_at | ended_at | start_station_name | start_station_id | start_lat | start_lng | end_lat | end_lng | member_casual |
| ------- | ------------- | ---------- | -------- | ------------------ | ---------------- | --------- | --------- | ------- | ------- | ------------- |
| STRING  | STRING | TIMESTAMP | TIMESTAMP | STRING | STRING | STRING | STRING | FLOAT | FLOAT | FLOAT | FLOAT | STRING |

## Process
BigQuery is used to combine the various datasets into one dataset and clean it.

**Reason:** A worksheet can only have 1,048,576 rows in Microsoft Excel because of its inability to manage large amounts of data. Because the Cyclistic dataset has more than 5.6 million rows, it is essential to use a platform like BigQuery that supports huge volumes of data.

### Data Types Changing
SQL Query: [Data Types Changing](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/blob/main/01.%20Data%20Types%20Changing.sql)
Data from **April 2020 to December 2020** have different data types for the start_station_id and end_station_id columns. Therefore, I need to change their data type from integer to string to ensure consistency with the rest of the table by using BigQuery.

### Data Combining
48 csv files are combined into a file containing **21,182,202 rows** of data for the **4 consecutive years**. I used BigQuery to combine all the tables together.

### Data Exploration
SQL Query: [Data Exploration](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/blob/main/03.%20Data%20Exploration.sql)

Before cleaning the data, I am familiarizing myself with the data to find the inconsistencies.

**Observations**:
1. The table below shows all column names and their data types. The ride_id column is our primary key.

![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/7ec6ab94-f612-4d11-8cbd-533dd7d0e5fa)

2. The following table shows the number of null values in each column.
![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/463cc08f-f7c6-4923-86de-ebbce72f7338)

Note that some columns have the same number of missing values. This may be due to missing information in the same row i.e. station's name and id for the same station and latitude and longitude for the same ending station.

3. As ride_id has no null values, let's use it to check for duplicates.
   
![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/b2845b58-ed71-4bc3-9f91-82fb630834bf)

There are 209 duplicate rows with the same ride_id that need to be filtered to select only unique values. To remove duplicate rows in BigQuery and retain only unique ride_id values, you can use the ROW_NUMBER() window function to assign a unique row number to each row within a partition of ride_id. 

4. All ride_id values have length of 16 so no need to clean it.

5. There are 3 unique types of bikes (rideable_type) in our data.

![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/2175b855-3f9b-4b0c-a2f6-441a28ec0cf3)

6. The started_at and ended_at shows start and end time of the trip in YYYY-MM-DD hh:mm:ss UTC format. New column ride_length can be created to find the total trip duration. There are **21,162,213 trips** which have duration longer than a day and **440,123 trips** having less than a minute duration or having end time earlier than start time so need to remove them. Other columns day_of_week and month can also be helpful in analysis of trips at different times in a year.

7. Total of **2,656,634 rows** have both start_station_name and start_station_id missing which needs to be removed.

8. Total of **2,844,154 rows** have both end_station_name and end_station_id missing which needs to be removed.

9. Total of **23,353 rows** have both end_lat and end_lng missing which needs to be removed.

10. member_casual column has 2 unique values as member or casual rider.

![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/d9e27a39-667f-4d37-a793-b2944e8486ff)

11. Columns that need to be removed are start_station_id and end_station_id as they do not add value to analysis of our current problem. Longitude and latitude location columns may not be used in analysis but can be used to visualize a map.

### Data Cleaning
SQL Query:  [Data Cleaning](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/blob/main/04.%20Data%20Cleaning.sql)
1. All the rows having missing values are deleted.

2. Three columns ride_length for duration of the trip, day_of_week and month are added.

3. Trips with duration less than a minute and longer than a day are excluded.

4. Total **4,396,662 rows** (21,182,202 - 16,785,540) are removed in this step.

## Analyze & Share
SQL Query: [Data Analysis](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/blob/main/05.%20Data%20Analysis.sql)
Data Visualization: [Tableau](https://public.tableau.com/views/cyclistic-trip-data/TripsatEndingStation?:language=en-US&:sid=&:display_count=n&:origin=viz_share_link)

The data is stored appropriately and is now prepared for analysis. I queried multiple relevant tables for the analysis and visualized them in Tableau.
### The analysis question is: How do annual members and casual riders use Cyclistic bikes differently?

First of all, members and casual riders are compared by the type of bikes they are using. In 4 years from Apr 2020 to Apr 2024, the members account for 60% of the total while the remaining 40% constitutes casual riders.

![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/c792a9a9-8241-4c0c-85aa-7a7de1406c53)

If we look at the type of bicycle, most of the bicycles used are classic bicycles. Classic bikes and electric bikes are more commonly used by members, whereas docked bikes are predominantly used by a larger group of casual riders.

![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/c2e05ea2-cae1-49aa-81a5-7f79a8a6ab7b)

Next the number of trips distributed by the months, days of the week and hours of the day are examined in four years (Apr 2020 - Apr 2024).
- **Months**: When it comes to monthly trips, both casual and members exhibit comparable behavior, with more trips in the spring and summer and fewer in the winter. The gap between casuals and members is closest in the month of July in summer.

![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/a793a107-d197-4adf-a0fc-f2493505cb5d)

- **Days of Week**: When comparing days of the week, it is found that casual riders make more trips on weekends, while members' trips decline over the weekend compared to weekdays.

![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/c8783ac5-4f8a-4ae2-a64c-54c297847cf5)

- **Hours of the Day**: Members show two peaks in the number of trips: one in the early morning around 6 AM to 8 AM, and another in the evening from around 4 PM to 8 PM. In contrast, the number of trips by casual riders increases steadily throughout the day until evening, then decreases afterward.

![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/19fb54cc-29ed-45b5-9189-072b04879ec7)

From these observations, we can infer that members likely use bikes for commuting to and from work on weekdays, while casual riders use bikes throughout the day, especially on weekends, for leisure purposes. Both groups are most active during the summer and spring.

Ride duration of the trips are compared to find the differences in the behavior of casual and member riders.

![image](https://github.com/amykimhere/Google-Data-Analytics-Capstone-Case-Study/assets/160596970/eece5979-d8f8-4d74-af18-2026f980aaef)

Casual riders typically cycle for longer durations compared to members. The average journey length for members remains consistent throughout the year, regardless of the season, week, or time of day. In contrast, the duration of rides for casual riders varies. They tend to cycle longer distances during spring and summer, on weekends, and between 10 AM and 2 PM. However, their trips are shorter between 5 AM and 8 AM.

These findings suggest that casual commuters travel approximately twice as long as members, but less frequently. They tend to take longer trips on weekends, during the day outside of commuting hours, and in the spring and summer, indicating that their cycling is likely for recreational purposes.

To further understand the differences between casual and member riders, we can analyze the locations of starting and ending stations. By filtering the stations with the highest number of trips, we can draw the following conclusions:
- Casual riders tend to start their trips from stations near museums, parks, beaches, harbor points, and aquariums. In contrast, members often begin their journeys from stations close to universities, residential areas, restaurants, hospitals, grocery stores, theaters, schools, banks, factories, train stations, parks, and plazas.
- A similar trend can be observed in the locations where trips end. Casual riders often conclude their journeys near parks, museums, and other recreational sites, indicating their use of bikes for leisure activities. Conversely, members tend to end their trips near universities, residential areas, and commercial districts, highlighting their extensive reliance on bikes for daily commuting purposes.

### Summary:
| Casual | Member |
| ------ | ------ |
| Prefer using bikes throughout the day, more frequently over the weekends in summer and spring for leisure activities. | Prefer riding bikes on weekdays during commute hours (8 AM / 5 PM) in summer and spring. |
| Travel 2 times longer but less frequently than members. | Travel more frequently but shorter rides (approximately half of casual riders' trip duration). |
| Start and end their journeys near parks, museums, along the coast and other recreational sites. | Start and end their trips close to universities, residential and commercial areas. |


## Act
Based on the identified differences between casual and member riders, here are some recommendations for developing marketing strategies to target casual riders and persuade them to become members:
- Seasonal Marketing Campaigns: Conduct targeted marketing campaigns during spring and summer at tourist and recreational locations popular among casual riders. Highlight the benefits of becoming a member, such as access to bikes for longer durations and special member events.
- Flexible Membership Options: Since casual riders are most active on weekends and during the summer and spring, consider offering seasonal or weekend-only memberships. These options can be tailored to meet their usage patterns and encourage them to transition to regular membership.
- Promotions for Longer Rides: Casual riders tend to use bikes for longer durations compared to members. Offer incentives such as discounts for longer rides or rewards for accumulated ride time. This approach can appeal to casual riders looking for cost-effective ways and entice members to enjoy extended bike trips.

By aligning marketing efforts with the preferences and behavior patterns of casual riders, these strategies aim to effectively attract them to become regular members of the bike-sharing service.
### Reference: As a junior data analytics learner, I would like to thank the author below for guiding me through this case study.
- https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study 
