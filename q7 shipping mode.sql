-- Q7: Shipping Mode Analysis (Fixed)
SELECT 
    ship_mode,
    COUNT(DISTINCT order_id)              AS total_orders,
    ROUND(SUM(sales)::numeric, 2)         AS total_sales,
    ROUND(SUM(profit)::numeric, 2)        AS total_profit,
    ROUND(AVG(discount)*100::numeric, 1)  AS avg_discount_pct,
    ROUND((SUM(profit)/SUM(sales)*100)::numeric, 2) AS profit_margin_pct,
    ROUND(AVG(EXTRACT(EPOCH FROM (ship_date - order_date))/86400)::numeric, 1) AS avg_shipping_days
FROM retail_sales
GROUP BY ship_mode
ORDER BY total_profit DESC;