SELECT reg.region
  , ath.season
  , COUNT(DISTINCT ath.athlete_id) AS no_athletes
  , COUNT(DISTINCT reg.olympic_cc) AS no_countries
  , COUNT(DISTINCT ath.athlete_id)/COUNT(DISTINCT reg.olympic_cc) AS athletes_per_country
FROM athletes ath
INNER JOIN oregions reg
  ON ath.country_code = reg.olympic_cc
GROUP BY reg.region, ath.season -- Group by region and season
ORDER BY reg.region , athletes_per_country;