-- Subquery
EXPLAIN ANALYZE
SELECT city
, sex
, COUNT(DISTINCT athlete_id) as no_athletes
, AVG(age) as avg_age
FROM athletes_summ
WHERE country_code IN (SELECT olympic_cc FROM demographics WHERE gdp > 10000 and year = 2016)
AND year = 2016
GROUP BY city, sex;

-- Note the initial step in the query plan

-- Common Table Expression (CTE)
EXPLAIN ANALYZE
WITH gdp AS -- From the demographics table
(
  SELECT olympic_cc FROM demographics WHERE gdp > 10000 and year = 2016
)
SELECT a.city, a.sex
  , COUNT(DISTINCT a.athlete_id) as no_athletes
  , AVG(a.age) as avg_age
FROM athletes_summ a
INNER JOIN gdp
  ON a.country_code = gdp.olympic_cc
WHERE a.year = 2016
GROUP BY a.city, a.sex;

