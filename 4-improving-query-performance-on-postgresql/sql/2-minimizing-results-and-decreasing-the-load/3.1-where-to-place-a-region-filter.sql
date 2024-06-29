SELECT dem.olympic_cc, reg.country, dem.gdp, dem.population
FROM demographics dem
LEFT JOIN oregions reg
  ON dem.olympic_cc = reg.olympic_cc
  AND reg.region = 'Africa'
WHERE dem.year = 2014
AND dem.gdp IS NOT NULL
ORDER BY dem.gdp DESC; 

SELECT dem.olympic_cc, reg.country, dem.gdp, dem.population
FROM demographics dem
LEFT JOIN oregions reg
  ON dem.olympic_cc = reg.olympic_cc
WHERE dem.year = 2014
AND reg.region = 'Africa'
AND dem.gdp IS NOT NULL
ORDER BY dem.gdp DESC;

SELECT dem.olympic_cc, reg.country, dem.gdp, dem.population
FROM demographics dem
INNER JOIN oregions reg
  ON dem.olympic_cc = reg.olympic_cc
  AND reg.region = 'Africa'
WHERE dem.year = 2014
AND dem.gdp IS NOT NULL
ORDER BY dem.gdp DESC;