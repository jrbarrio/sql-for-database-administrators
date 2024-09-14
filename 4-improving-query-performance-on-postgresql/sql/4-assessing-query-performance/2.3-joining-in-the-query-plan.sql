EXPLAIN ANALYZE
SELECT old.country
, old.region
, old.population_1990
, new.population_2017
, 100*((new.population_2017 - old.population_1990)/new.population_2017::float) as population_growth
FROM pop_1990 old
INNER JOIN pop_2017 new 
USING(country)
ORDER BY population_growth DESC