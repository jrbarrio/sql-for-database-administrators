SELECT reg.region, reg.country
  , COUNT(DISTINCT ath.athlete_id) AS no_athletes
FROM regions reg
LEFT JOIN athletes ath
  ON reg.olympic_cc = ath.country_code
GROUP BY reg.region, reg.country
ORDER BY no_athletes DESC;

SELECT reg.region, reg.country
  , COUNT(DISTINCT ath.athlete_id) AS no_athletes
FROM athletes ath
RIGHT JOIN regions reg
  ON ath.country_code = reg.olympic_cc
GROUP BY reg.region, reg.country
ORDER BY no_athletes DESC;

SELECT reg.region, reg.country
  , COUNT(DISTINCT ath.athlete_id) AS no_athletes
FROM athletes ath
INNER JOIN regions reg
  ON ath.country_code = reg.olympic_cc
GROUP BY reg.region, reg.country
ORDER BY no_athletes DESC;