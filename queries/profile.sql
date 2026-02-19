-- Total count of rows

SELECT COUNT(*) FROM wine_raw.reviews;

--NULL Profiling?

SELECT
COUNTIF(int64_field_0 is NULL) AS int64_field_0_null,
COUNTIF(country is NULL) AS country_null,
COUNTIF(description is NULL) AS description_null,
COUNTIF(designation is NULL)  AS designation_null,
COUNTIF(points is NULL) AS points_null,
COUNTIF(price is NULL) AS price_null,
COUNTIF(province is NULL) AS province_null,
COUNTIF(region_1 is NULL) AS region_1_null,
COUNTIF(region_2 is NULL) AS region_2_null,
COUNTIF(variety is NULL) AS variety_null,
COUNTIF(winery is NULL) AS winery_null


FROM wine_raw.reviews

-- Min-Max profiling


SELECT MIN(price) as MINPRICE,
       MAX(price) as MAXPRICE,
       MIN(points) as MINPOINTS,
       MAX(points) as MAXPOINTS
FROM wine_raw.reviews
