-- Create temp countries table
CREATE TEMP TABLE countries AS
    SELECT DISTINCT o.region, a.country_code, o.country
    FROM athletes a
    INNER JOIN oregions o
      ON a.country_code = o.olympic_cc;
      
ANALYZE countries; -- Collect the statistics

-- Count the entries
SELECT COUNT(*) FROM countries;