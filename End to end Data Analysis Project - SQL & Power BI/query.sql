
with cte as (
SELECT *
FROM bike_share_yr_0
UNION ALL
SELECT *
FROM bike_share_yr_1
)

SELECT 
	dteday, season,
    a.yr, hr, rider_type,
    riders, b.price, b.COGS,
    riders * b.price as revenue,
    (riders * b.price) - (b.COGS * riders) as profit
FROM cte as a
LEFT JOIN cost_table as b
	ON a.yr = b.yr;

























