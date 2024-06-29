SELECT reg.region, COUNT(DISTINCT dem.olympic_cc)
FROM regions reg -- Olympics region data
LEFT JOIN demographics dem -- World Bank population data
  ON dem.olympic_cc = reg.olympic_cc
GROUP BY reg.region;