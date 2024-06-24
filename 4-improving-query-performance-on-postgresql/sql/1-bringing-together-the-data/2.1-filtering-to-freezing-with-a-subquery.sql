-- Countries cold enough for snow year-round
SELECT country_code
  , country
  , COUNT (DISTINCT athlete_id) AS winter_athletes -- Athletes can compete in multiple events 
FROM athletes
WHERE country_code IN (SELECT olympic_cc FROM oclimate WHERE temp_annual < 0)
AND season = 'Winter'
GROUP BY country_code, country;