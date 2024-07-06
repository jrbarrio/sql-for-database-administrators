-- Examine metadata about daily_aqi
SELECT column_name , data_type , is_nullable
FROM information_schema.columns
WHERE table_catalog = 'olympics_aqi'
AND table_name = 'daily_aqi' -- Limit to a specific table
;