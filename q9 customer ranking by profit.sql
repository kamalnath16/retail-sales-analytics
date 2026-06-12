-- Q9: Customer Ranking by Profit (Window Function)
SELECT 
    customer_name,
    segment,
    region,
    ROUND(SUM(sales)::numeric, 2)      AS total_sales,
    ROUND(SUM(profit)::numeric, 2)     AS total_profit,
    RANK() OVER (
        ORDER BY SUM(profit) DESC
    )                                   AS profit_rank,
    RANK() OVER (
        PARTITION BY region 
        ORDER BY SUM(profit) DESC
    )                                   AS rank_within_region
FROM retail_sales
GROUP BY customer_name, segment, region
ORDER BY profit_rank ASC
LIMIT 15;