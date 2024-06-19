--Table 202004: convert data type of 2 columns

CREATE TABLE `sql-class-410403.cyclistic.202004-divvy-tripdata-new` AS
SELECT  
 ride_id,
 rideable_type,
 started_at,
 ended_at,
 start_station_name,
 CAST(start_station_id AS STRING) AS start_station_id, 
 end_station_name,
 CAST(end_station_id AS STRING) AS end_station_id,
 start_lat,
 start_lng,
 end_lat,
 end_lng,
 member_casual
FROM `sql-class-410403.cyclistic.202004-divvy-tripdata`

SELECT * FROM `sql-class-410403.cyclistic.202004-divvy-tripdata-new`
LIMIT 10;

DROP TABLE `sql-class-410403.cyclistic.202004-divvy-tripdata`

--Table 202005: convert data type of 2 columns
CREATE TABLE `sql-class-410403.cyclistic.202005-divvy-tripdata-new` AS
SELECT  
 ride_id,
 rideable_type,
 started_at,
 ended_at,
 start_station_name,
 CAST(start_station_id AS STRING) AS start_station_id, 
 end_station_name,
 CAST(end_station_id AS STRING) AS end_station_id,
 start_lat,
 start_lng,
 end_lat,
 end_lng,
 member_casual
FROM `sql-class-410403.cyclistic.202005-divvy-tripdata`

SELECT * FROM `sql-class-410403.cyclistic.202005-divvy-tripdata-new`
LIMIT 10;

DROP TABLE `sql-class-410403.cyclistic.202005-divvy-tripdata`

--Table 202006: convert data type of 2 columns
CREATE TABLE `sql-class-410403.cyclistic.202006-divvy-tripdata-new` AS
SELECT  
 ride_id,
 rideable_type,
 started_at,
 ended_at,
 start_station_name,
 CAST(start_station_id AS STRING) AS start_station_id, 
 end_station_name,
 CAST(end_station_id AS STRING) AS end_station_id,
 start_lat,
 start_lng,
 end_lat,
 end_lng,
 member_casual
FROM `sql-class-410403.cyclistic.202006-divvy-tripdata`

DROP TABLE `sql-class-410403.cyclistic.202006-divvy-tripdata`

--Table 202007: convert data type of 2 columns
CREATE TABLE `sql-class-410403.cyclistic.202007-divvy-tripdata-new` AS
SELECT  
 ride_id,
 rideable_type,
 started_at,
 ended_at,
 start_station_name,
 CAST(start_station_id AS STRING) AS start_station_id, 
 end_station_name,
 CAST(end_station_id AS STRING) AS end_station_id,
 start_lat,
 start_lng,
 end_lat,
 end_lng,
 member_casual
FROM `sql-class-410403.cyclistic.202007-divvy-tripdata`

DROP TABLE `sql-class-410403.cyclistic.202007-divvy-tripdata`

--Table 202008: convert data type of 2 columns
CREATE TABLE `sql-class-410403.cyclistic.202008-divvy-tripdata-new` AS
SELECT  
 ride_id,
 rideable_type,
 started_at,
 ended_at,
 start_station_name,
 CAST(start_station_id AS STRING) AS start_station_id, 
 end_station_name,
 CAST(end_station_id AS STRING) AS end_station_id,
 start_lat,
 start_lng,
 end_lat,
 end_lng,
 member_casual
FROM `sql-class-410403.cyclistic.202008-divvy-tripdata`

SELECT * FROM `sql-class-410403.cyclistic.202008-divvy-tripdata-new`
LIMIT 10;

DROP TABLE `sql-class-410403.cyclistic.202008-divvy-tripdata`

--Table 202009: convert data type of 2 columns
CREATE TABLE `sql-class-410403.cyclistic.202009-divvy-tripdata-new` AS
SELECT  
 ride_id,
 rideable_type,
 started_at,
 ended_at,
 start_station_name,
 CAST(start_station_id AS STRING) AS start_station_id, 
 end_station_name,
 CAST(end_station_id AS STRING) AS end_station_id,
 start_lat,
 start_lng,
 end_lat,
 end_lng,
 member_casual
FROM `sql-class-410403.cyclistic.202009-divvy-tripdata`

SELECT * FROM `sql-class-410403.cyclistic.202009-divvy-tripdata-new`
LIMIT 10;

DROP TABLE `sql-class-410403.cyclistic.202009-divvy-tripdata`

--Table 202010: convert data type of 2 columns
CREATE TABLE `sql-class-410403.cyclistic.202010-divvy-tripdata-new` AS
SELECT  
 ride_id,
 rideable_type,
 started_at,
 ended_at,
 start_station_name,
 CAST(start_station_id AS STRING) AS start_station_id, 
 end_station_name,
 CAST(end_station_id AS STRING) AS end_station_id,
 start_lat,
 start_lng,
 end_lat,
 end_lng,
 member_casual
FROM `sql-class-410403.cyclistic.202010-divvy-tripdata`

SELECT * FROM `sql-class-410403.cyclistic.202010-divvy-tripdata-new`
LIMIT 10;

DROP TABLE `sql-class-410403.cyclistic.202010-divvy-tripdata`

--Table 202011: convert data type of 2 columns
CREATE TABLE `sql-class-410403.cyclistic.202011-divvy-tripdata-new` AS
SELECT  
 ride_id,
 rideable_type,
 started_at,
 ended_at,
 start_station_name,
 CAST(start_station_id AS STRING) AS start_station_id, 
 end_station_name,
 CAST(end_station_id AS STRING) AS end_station_id,
 start_lat,
 start_lng,
 end_lat,
 end_lng,
 member_casual
FROM `sql-class-410403.cyclistic.202011-divvy-tripdata`

SELECT * FROM `sql-class-410403.cyclistic.202011-divvy-tripdata-new`
LIMIT 10;

DROP TABLE `sql-class-410403.cyclistic.202011-divvy-tripdata`

--Table 202012: convert data type of 2 columns
CREATE TABLE `sql-class-410403.cyclistic.202012-divvy-tripdata-new` AS
SELECT  
 ride_id,
 rideable_type,
 started_at,
 ended_at,
 start_station_name,
 CAST(start_station_id AS STRING) AS start_station_id, 
 end_station_name,
 CAST(end_station_id AS STRING) AS end_station_id,
 start_lat,
 start_lng,
 end_lat,
 end_lng,
 member_casual
FROM `sql-class-410403.cyclistic.202012-divvy-tripdata`

SELECT * FROM `sql-class-410403.cyclistic.202012-divvy-tripdata-new`
LIMIT 10;

DROP TABLE `sql-class-410403.cyclistic.202012-divvy-tripdata`


