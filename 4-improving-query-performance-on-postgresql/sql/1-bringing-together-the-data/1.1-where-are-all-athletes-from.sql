-- Athlete count by country and region
SELECT reg.region
  , reg.country
  , COUNT(DISTINCT ath.athlete_id) AS no_athletes -- Athletes can compete in multiple events
FROM athletes ath
INNER JOIN oregions reg
  ON reg.olympic_cc = ath.country_code
GROUP BY reg.region, reg.country
ORDER BY no_athletes;