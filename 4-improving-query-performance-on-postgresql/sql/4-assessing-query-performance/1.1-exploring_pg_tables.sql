-- Select the column that indicates if the daily_aqi table has an index.
SELECT * -- Index indicator column
FROM pg_class
WHERE relname = 'daily_aqi';

-- Completed task after requesting a hint or solution
Use pg_stats to find column level statistics
SELECT *
FROM pg_stats
WHERE tablename = 'daily_aqi'
AND attname = 'category';

