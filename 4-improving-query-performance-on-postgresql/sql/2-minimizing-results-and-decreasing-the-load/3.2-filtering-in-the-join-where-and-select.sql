SELECT DISTINCT ath.name, dem.country, dem.gdp
FROM athletes_wint ath
INNER JOIN odemographics dem
  ON ath.country_code = dem.olympic_cc 
WHERE ath.year = 2014
ORDER BY dem.gdp DESC;