-- Q4: Top 10 Customers by Revenue
SELECT 
    customer_name,
    segment,
    region,
    COUNT(DISTINCT order_id)              AS total_orders,
    ROUND(SUM(sales)::numeric, 2)         AS total_revenue,
    ROUND(SUM(profit)::numeric, 2)        AS total_profit,
    ROUND((SUM(profit)/SUM(sales)*100)::numeric, 2) AS profit_margin_pct
FROM retail_sales
GROUP BY customer_name, segment, region
ORDER BY total_revenue DESC
LIMIT 10;