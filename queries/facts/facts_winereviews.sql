CREATE OR REPLACE TABLE wine_core.fact_wine_reviews AS
SELECT w.points,
    w.price,
    c.country,
    v.variety,
    wi.winery
FROM `wine_stg.stg_reviews` w
    INNER JOIN `wine_core.dim_country` c ON w.country = c.country
    INNER JOIN `wine_core.dim_variety` v ON w.variety = v.variety
    INNER JOIN `wine_core.dim_winery` wi ON w.winery = wi.winery