SELECT AVG(points) AS avg_points,
variety,
DENSE_RANK() OVER (ORDER BY AVG(points) DESC) AS rank_of_winery
FROM `wine_core.fact_wine_reviews`
group by variety
LIMIT 10