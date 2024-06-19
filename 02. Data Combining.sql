--Data Combining

CREATE TABLE `sql-class-410403.cyclistic.divvy-tripdata` AS (
 SELECT * FROM `sql-class-410403.cyclistic.202004-divvy-tripdata-new` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202005-divvy-tripdata-new` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202006-divvy-tripdata-new` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202007-divvy-tripdata-new` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202008-divvy-tripdata-new` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202009-divvy-tripdata-new` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202010-divvy-tripdata-new` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202011-divvy-tripdata-new` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202012-divvy-tripdata-new` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202101-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202102-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202103-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202104-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202105-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202106-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202107-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202108-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202109-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202110-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202111-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202112-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202201-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202202-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202203-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202204-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202205-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202206-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202207-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202208-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202209-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202210-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202211-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202212-divvy-tripdata` 
  UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202301-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202302-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202303-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202304-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202305-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202306-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202307-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202308-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202309-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202310-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202311-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202312-divvy-tripdata` 
  UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202401-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202402-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202403-divvy-tripdata` 
 UNION ALL
 SELECT * FROM `sql-class-410403.cyclistic.202404-divvy-tripdata` 
);

SELECT COUNT (*) FROM `sql-class-410403.cyclistic.divvy-tripdata`
