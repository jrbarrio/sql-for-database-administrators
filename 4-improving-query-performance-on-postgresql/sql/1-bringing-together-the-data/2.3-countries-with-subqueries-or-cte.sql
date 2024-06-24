-- Climate by country with Olympian athletes
SELECT country
  , temp_06
  , precip_06
FROM climate
WHERE region = 'Africa'
AND olympic_cc IN (SELECT DISTINCT country_code FROM athletes_wint)
ORDER BY temp_06;

WITH countries_cte AS -- CTE
(
    SELECT olympic_cc
      , country
      , precip_06
      , temp_06
    FROM climate
    WHERE region = 'Africa'
)

SELECT DISTINCT cte.country
  , cte.temp_06
  , cte.precip_06
FROM athletes_wint AS wint
INNER JOIN countries_cte AS cte
  ON wint.country_code = cte.olympic_cc
ORDER BY temp_06;