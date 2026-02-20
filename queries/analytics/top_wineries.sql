SELECT AVG(points) AS avg_points,
winery,
DENSE_RANK() OVER (ORDER BY AVG(points) DESC) AS rank_of_winery
FROM `wine_core.fact_wine_reviews`
group by winery
LIMIT 10