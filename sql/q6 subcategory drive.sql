-- Q6: Sub-Category Deep Dive
SELECT 
    category,
    sub_category,
    COUNT(DISTINCT order_id)              AS total_orders,
    ROUND(SUM(sales)::numeric, 2)         AS total_sales,
    ROUND(SUM(quantity)::numeric)         AS total_units,
    ROUND(SUM(profit)::numeric, 2)        AS total_profit,
    ROUND(AVG(discount)*100::numeric, 1)  AS avg_discount_pct,
    ROUND((SUM(profit)/SUM(sales)*100)::numeric, 2) AS profit_margin_pct
FROM retail_sales
GROUP BY category, sub_category
ORDER BY profit_margin_pct ASC;