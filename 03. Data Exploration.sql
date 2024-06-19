--Data Exploration

--checking for number of null values in all columns

SELECT  
    COUNT(*) - COUNT(ride_id) AS ride_id,
    COUNT(*) - COUNT(rideable_type) AS rideable_type,
    COUNT(*) - COUNT(started_at) AS started_at,
    COUNT(*) - COUNT(ended_at) AS ended_at,
    COUNT(*) - COUNT(start_station_name) AS start_station_name,
    COUNT(*) - COUNT(start_station_id) AS start_station_id,
    COUNT(*) - COUNT(end_station_name) AS end_station_name,
    COUNT(*) - COUNT(end_station_id) AS end_station_id,
    COUNT(*) - COUNT(start_lat) AS start_lat,
    COUNT(*) - COUNT(start_lng) AS start_lng,
    COUNT(*) - COUNT(end_lat) AS end_lat,
    COUNT(*) - COUNT(end_lng) AS end_lng,
    COUNT(*) - COUNT(member_casual) AS member_casual
FROM `sql-class-410403.cyclistic.divvy-tripdata` 

--checking for duplicate rows -> there are 209 duplicate rows

SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM `sql-class-410403.cyclistic.divvy-tripdata` 

--ride_id -> all have the length of 16
SELECT LENGTH(ride_id) AS length_ride_id, COUNT(DISTINCT ride_id) AS no_of_rows
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
GROUP BY length_ride_id

--rideable_type - 3 unique types of bikes
SELECT 
    DISTINCT rideable_type,
    COUNT (rideable_type) AS no_of_trips
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
GROUP BY rideable_type

--started_at, ended_at - TIMESTAMP - YYYY-MM-DD hh:mm:ss UTC
SELECT started_at, ended_at
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
LIMIT 10

SELECT COUNT(*) AS longer_than_a_day
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
WHERE (
    EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
    EXTRACT(MINUTE FROM (ended_at - started_at)) +
    EXTRACT(SECOND FROM (ended_at - started_at)) / 60 <= 1440 --longer than a day - total rows = 21162213
)

SELECT COUNT(*) AS less_than_a_minute
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
WHERE (
    EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
    EXTRACT(MINUTE FROM (ended_at - started_at)) +
    EXTRACT(SECOND FROM (ended_at - started_at)) / 60 <= 1 --less_than_a_minute - total rows = 
)

--start_station_name, start_station_id -> total 2656634 rows with both start station name and id missing
SELECT DISTINCT start_station_name
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
ORDER BY start_station_name;

SELECT COUNT(DISTINCT ride_id) AS rows_with_start_station_null --return 2656634 rows
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
WHERE start_station_name IS NULL OR start_station_id IS NULL;

--end_station_name, end_station_id -> total 2844154 rows with both end station name and id missing
SELECT DISTINCT end_station_name
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
ORDER BY end_station_name;

SELECT COUNT(DISTINCT ride_id) AS rows_with_end_station_null --return 2844154 rows
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
WHERE end_station_name IS NULL OR end_station_id IS NULL;

--end_lat, end_lng -> total 23353 rows with both missing
SELECT COUNT(DISTINCT ride_id) AS rows_with_null_end_loc
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
WHERE end_lat IS NULL OR end_lng IS NULL;

--member_casual - 2 unique values - member and casual riders
SELECT member_casual, COUNT(member_casual) AS no_of_trips
FROM `sql-class-410403.cyclistic.divvy-tripdata` 
GROUP BY member_casual


