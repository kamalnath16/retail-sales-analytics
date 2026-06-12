-- Q10: Month-over-Month Sales Growth (LAG Function)
SELECT 
    year_month,
    total_sales,
    LAG(total_sales) OVER (
        ORDER BY year_month
    )                                        AS prev_month_sales,
    ROUND(
        (total_sales - LAG(total_sales) OVER (ORDER BY year_month)) 
        / LAG(total_sales) OVER (ORDER BY year_month) * 100
    ::numeric, 2)                            AS mom_growth_pct
FROM (
    SELECT 
        TO_CHAR(order_date, 'YYYY-MM')       AS year_month,
        ROUND(SUM(sales)::numeric, 2)        AS total_sales
    FROM retail_sales
    GROUP BY year_month
    ORDER BY year_month
) monthly_data
ORDER BY year_month;