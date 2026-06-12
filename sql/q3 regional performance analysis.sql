-- Q3: Regional Performance Analysis
SELECT 
    region,
    COUNT(DISTINCT order_id)              AS total_orders,
    COUNT(DISTINCT customer_id)           AS total_customers,
    ROUND(SUM(sales)::numeric, 2)         AS total_sales,
    ROUND(SUM(profit)::numeric, 2)        AS total_profit,
    ROUND((SUM(profit)/SUM(sales)*100)::numeric, 2) AS profit_margin_pct
FROM retail_sales
GROUP BY region
ORDER BY total_profit DESC;