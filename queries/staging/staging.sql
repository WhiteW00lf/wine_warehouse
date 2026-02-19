CREATE OR REPLACE TABLE wine_stg.stg_reviews AS

WITH cleaned AS
         (SELECT SAFE_CAST(int64_field_0 AS INTEGER) AS review_id,
                 SAFE_CAST(points AS FLOAT64)        AS points,
                 SAFE_CAST(price AS FLOAT64)         AS price,
                 LOWER(TRIM(country))                AS country,
                 LOWER(TRIM(description))            AS description,
                 LOWER(TRIM(region_1))               AS region_1,
                 LOWER(TRIM(region_2))               AS region_2,
                 LOWER(TRIM(province))               AS province,
                 LOWER(TRIM(variety))                AS variety,
                 LOWER(TRIM(winery))                 AS winery,


          FROM wine_raw.reviews

          WHERE points IS NOT NULL
            AND price IS NOT NULL
            AND int64_field_0 IS NOT NULL
            AND country IS NOT NULL
            AND description IS NOT NULL
            AND region_1 IS NOT NULL
            AND region_2 IS NOT NULL
            AND province IS NOT NULL
            AND variety IS NOT NULL
            AND winery IS NOT NULL
            AND points > 0
            AND price > 0)


SELECT *
FROM cleaned;


