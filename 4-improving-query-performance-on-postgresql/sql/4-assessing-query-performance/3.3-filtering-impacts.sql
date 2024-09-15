SELECT city, sex, COUNT(DISTINCT athlete_id), AVG(age) AS avg_age
FROM athletes_summ
WHERE city IN ('Rio de Janeiro','Beijing')
GROUP BY city, sex;

-- Read the query plan with the text city filter
EXPLAIN ANALYZE
SELECT city, sex, COUNT(DISTINCT athlete_id), AVG(age) AS avg_age
FROM athletes_summ
WHERE city IN ('Rio de Janeiro','Beijing')
GROUP BY city, sex;

-- Find the execution time with a numeric year filter
EXPLAIN ANALYZE
SELECT city, sex, COUNT(DISTINCT athlete_id), AVG(age) AS avg_age
FROM athletes_summ
WHERE year IN (2016,2008) -- Filter by year
GROUP BY city, sex;