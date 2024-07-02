SELECT DISTINCT table_type
FROM information_schema.tables 
WHERE table_catalog = 'olympics_aqi'; 

SELECT *
FROM information_schema.tables 
WHERE table_catalog = 'olympics_aqi' 
AND table_name = 'annual_aqi';