--Data Cleaning

--creating new table with clean data

CREATE TABLE IF NOT EXISTS `sql-class-410403.cyclistic.divvy-tripdata-cleaned` AS (
  SELECT 
  a.ride_id, rideable_type, started_at, ended_at, ride_length, 
  CASE EXTRACT(DAYOFWEEK FROM started_at)
      WHEN 1 THEN 'SUNDAY'
      WHEN 2 THEN 'MONDAY'
      WHEN 3 THEN 'TUESDAY'
      WHEN 4 THEN 'WEDNESDAY'
      WHEN 5 THEN 'THURSDAY'
      WHEN 6 THEN 'FRIDAY'
      WHEN 7 THEN 'SATURDAY'
  END AS day_of_week,
  CASE EXTRACT(MONTH FROM started_at)
      WHEN 1 THEN 'JAN'
      WHEN 2 THEN 'FEB'
      WHEN 3 THEN 'MAR'
      WHEN 4 THEN 'APR'
      WHEN 5 THEN 'MAY'
      WHEN 6 THEN 'JUN'
      WHEN 7 THEN 'JUL'
      WHEN 8 THEN 'AUG'
      WHEN 9 THEN 'SEP'
      WHEN 10 THEN 'OCT'
      WHEN 11 THEN 'NOV'
      WHEN 12 THEN 'DEC'
  END AS month,
  start_station_name, end_station_name, start_lat, start_lng, end_lat, end_lng, member_casual
  FROM `sql-class-410403.cyclistic.divvy-tripdata` AS a
JOIN (
  SELECT ride_id, (
         EXTRACT(HOUR FROM(ended_at - started_at)) * 60 + 
         EXTRACT(MINUTE FROM(ended_at - started_at)) + 
         EXTRACT(SECOND FROM(ended_at - started_at)) / 60 ) AS ride_length
  FROM `sql-class-410403.cyclistic.divvy-tripdata`
  ) AS b
ON a.ride_id = b.ride_id
WHERE 
    start_station_name IS NOT NULL AND
    end_station_name IS NOT NULL AND
    end_lat IS NOT NULL AND
    end_lng IS NOT NULL AND
    b.ride_length > 1 AND b.ride_length < 1440
);

--total values of ride_id -> 16785745 rows
SELECT COUNT(ride_id) 
FROM `sql-class-410403.cyclistic.divvy-tripdata-cleaned`;

--duplicate values -> 205 rows
SELECT COUNT(ride_id) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM `sql-class-410403.cyclistic.divvy-tripdata-cleaned`;

CREATE TABLE `sql-class-410403.cyclistic.divvy-tripdata-cleaned-FINAL` AS
WITH ranked_table AS (
  SELECT *, ROW_NUMBER() OVER (PARTITION BY ride_id) AS row_num
  FROM `sql-class-410403.cyclistic.divvy-tripdata-cleaned`
)
SELECT * FROM ranked_table
WHERE row_num = 1;

--after removing duplicate value of ride_id -> ride_id has total 16785540 rows
SELECT COUNT(ride_id)
FROM `sql-class-410403.cyclistic.divvy-tripdata-cleaned-FINAL`

