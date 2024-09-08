SELECT COUNT(no_sites)
FROM daily_aqi
WHERE state_code = 15 -- Hawaii state code
AND no_sites > 1;

EXPLAIN
SELECT *
FROM daily_aqi
WHERE state_code = 15 -- Hawaii state code
AND no_sites > 1;

EXPLAIN
SELECT *
FROM daily_aqi_partitioned
WHERE state_code = 15 -- partitioned on state code
AND no_sites > 1;