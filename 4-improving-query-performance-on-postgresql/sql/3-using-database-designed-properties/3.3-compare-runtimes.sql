SELECT category
  , COUNT(*) as record_cnt
  , SUM(no_sites) as aqi_monitoring_site_cnt
FROM daily_aqi
WHERE category <> 'Good'
AND state_code = 15 -- Filter to Hawaii
GROUP BY category;

EXPLAIN
SELECT category
  , COUNT(*) as record_cnt
  , SUM(no_sites) as aqi_monitoring_site_cnt
FROM daily_aqi
WHERE defining_parameter = 'SO2'
AND category <> 'Good'
AND state_code = 15 -- Filter to Hawaii
GROUP BY  category;

CREATE INDEX defining_parameter_index ON daily_aqi (defining_parameter); 

EXPLAIN
SELECT category
  , COUNT(*) as record_cnt
  , SUM(no_sites) as aqi_monitoring_site_cnt
FROM daily_aqi
WHERE defining_parameter = 'SO2'
AND category <> 'Good'
AND state_code = 15 -- Hawaii
GROUP BY  category;