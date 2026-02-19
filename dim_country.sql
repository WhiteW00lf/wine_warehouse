CREATE OR REPLACE TABLE wine_core.dim_country AS
SELECT 
DISTINCT ROW_NUMBER() over ( ORDER BY country )
AS country_key,
country 
FROM (SELECT DISTINCT country FROM `deportfolio-486507.wine_stg.stg_reviews`) 
ORDER BY country

