SELECT country_code
  , COUNT(DISTINCT athlete_id) as medals_count
FROM athletes_recent
WHERE medal IS NOT NULL
AND year = 2016
GROUP BY country_code
ORDER BY medals_count DESC;