EXPLAIN
SELECT * 
FROM daily_aqi
WHERE state_code = 15; -- Hawaii state code

EXPLAIN
SELECT * 
FROM daily_aqi_partitioned
WHERE state_code = 15; -- Hawaii state code

SELECT county_name
  , aqi
  , category
  , aqi_date
FROM daily_aqi_partitioned
WHERE state_code = 15 
ORDER BY aqi;