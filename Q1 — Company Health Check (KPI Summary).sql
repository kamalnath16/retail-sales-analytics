-- Q1: Company Health Check - KPI Summary
SELECT 
    COUNT(DISTINCT order_id)            AS total_orders,
    COUNT(DISTINCT customer_id)         AS total_customers,
    COUNT(DISTINCT product_id)          AS total_products,
    ROUND(SUM(sales)::numeric, 2)       AS total_revenue,
    ROUND(SUM(profit)::numeric, 2)      AS total_profit,
    ROUND(SUM(quantity)::numeric)       AS total_units_sold,
    ROUND((SUM(profit)/SUM(sales)*100)::numeric, 2) AS overall_margin_pct
FROM retail_sales;