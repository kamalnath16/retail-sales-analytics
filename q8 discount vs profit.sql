-- Q8: Discount vs Profit Impact Analysis
SELECT 
    CASE 
        WHEN discount = 0          THEN '0% - No Discount'
        WHEN discount <= 0.10      THEN '1-10% - Low'
        WHEN discount <= 0.20      THEN '11-20% - Medium'
        WHEN discount <= 0.30      THEN '21-30% - High'
        ELSE                            '31%+ - Very High'
    END                                AS discount_bucket,
    COUNT(DISTINCT order_id)           AS total_orders,
    ROUND(SUM(sales)::numeric, 2)      AS total_sales,
    ROUND(SUM(profit)::numeric, 2)     AS total_profit,
    ROUND(AVG(discount)*100::numeric, 1) AS avg_discount_pct,
    ROUND((SUM(profit)/SUM(sales)*100)::numeric, 2) AS profit_margin_pct
FROM retail_sales
GROUP BY discount_bucket
ORDER BY avg_discount_pct ASC;