-- Q5: Monthly Sales Trend
SELECT 
    EXTRACT(YEAR FROM order_date)         AS year,
    EXTRACT(MONTH FROM order_date)        AS month,
    TO_CHAR(order_date, 'YYYY-MM')        AS year_month,
    COUNT(DISTINCT order_id)              AS total_orders,
    ROUND(SUM(sales)::numeric, 2)         AS total_sales,
    ROUND(SUM(profit)::numeric, 2)        AS total_profit,
    ROUND((SUM(profit)/SUM(sales)*100)::numeric, 2) AS profit_margin_pct
FROM retail_sales
GROUP BY year, month, year_month
ORDER BY year, month;