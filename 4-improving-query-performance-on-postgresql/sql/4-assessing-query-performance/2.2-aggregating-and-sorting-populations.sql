EXPLAIN ANALYZE
SELECT country
 , region
 , MAX(population) - MIN(population) as population_change
FROM country_pop 
GROUP BY country, region;

EXPLAIN ANALYZE
SELECT country
 , region
 , MAX(population) - MIN(population) as population_change
FROM country_pop 
GROUP BY country, region
ORDER BY population_change DESC;