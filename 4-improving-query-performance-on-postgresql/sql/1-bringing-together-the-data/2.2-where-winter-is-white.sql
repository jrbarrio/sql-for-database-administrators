WITH south_cte AS -- CTE
(
  SELECT region
    , ROUND(AVG(temp_06),2) AS avg_winter_temp
    , ROUND(AVG(precip_06),2) AS avg_winter_precip
  FROM oclimate
  WHERE region IN ('Africa','South America','Australia and Oceania')
  GROUP BY region
)

SELECT south.region, south.avg_winter_temp, south.avg_winter_precip
  , COUNT(DISTINCT ath.athlete_id)
FROM south_cte as south
INNER JOIN athletes_recent ath
  ON south.region = ath.region
  AND ath.season = 'Winter'
GROUP BY south.region, south.avg_winter_temp, south.avg_winter_precip
ORDER BY south.avg_winter_temp;