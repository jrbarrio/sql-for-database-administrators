SELECT indexname
FROM pg_indexes
WHERE tablename = 'daily_aqi'; 

CREATE INDEX defining_parameter_index 
 ON daily_aqi (defining_parameter); -- Define the index creation

SELECT indexname -- Check for the index
FROM pg_indexes
WHERE tablename = 'daily_aqi';