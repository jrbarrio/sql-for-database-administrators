-- South African athletes by year
WITH athletes_cte AS 
(
    SELECT year
      , season
      , COUNT(DISTINCT athlete_id) AS no_athletes
    FROM athletes
    WHERE country_code = 'RSA' -- South Africa filter
    GROUP BY year, season
)

SELECT ath.year
  , ath.season
  , ath.no_athletes
  , demos.gdp_rounded
  , demos.gdp_rank
  , demos.population_rounded
  , demos.population_rank
FROM athletes_cte ath
INNER JOIN demographics_rank demos
  ON ath.year = demos.year
  AND demos.olympic_cc = 'RSA' -- Filter to South Africa
ORDER BY ath.season, ath.year;