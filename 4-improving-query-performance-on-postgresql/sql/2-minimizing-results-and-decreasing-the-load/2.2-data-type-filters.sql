SELECT games
  , name
  , age
FROM athletes_wint
WHERE year IN (1960,2010)
ORDER BY games;