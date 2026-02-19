CREATE OR REPLACE TABLE wine_core.dim_winery AS

SELECT
  ROW_NUMBER() OVER (ORDER BY winery) AS winery_key,
  winery
FROM (
  SELECT DISTINCT winery
  FROM wine_stg.stg_reviews
)
ORDER BY winery;
