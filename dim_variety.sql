CREATE OR REPLACE TABLE wine_core.dim_variety AS
SELECT
  ROW_NUMBER() OVER (ORDER BY variety) AS variety_key,
  variety
FROM (
  SELECT DISTINCT variety
  FROM wine_stg.stg_reviews
)
ORDER BY variety;
