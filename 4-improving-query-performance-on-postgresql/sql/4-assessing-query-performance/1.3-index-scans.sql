CREATE INDEX good_index 
ON annual_aqi(good);

EXPLAIN
SELECT state_name, county_name, aqi_year, good
FROM annual_aqi
WHERE good > 327 -- 90% of the year
AND aqi_year IN (2017,2018);