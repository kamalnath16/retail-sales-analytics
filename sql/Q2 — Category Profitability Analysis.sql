SELECT 
    category,
    ROUND(SUM(sales)::numeric, 2)        AS total_sales,
    ROUND(SUM(profit)::numeric, 2)       AS total_profit,
    ROUND(AVG(discount)*100::numeric, 1) AS avg_discount_pct,
    ROUND((SUM(profit)/SUM(sales)*100)::numeric, 2) AS profit_margin_pct
FROM retail_sales
GROUP BY category
ORDER BY total_profit DESC;