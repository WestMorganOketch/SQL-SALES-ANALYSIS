/*
ADVANCED ANALYTICS
WINDOW FUNCTIONS
*/
SELECT
     order_date,
     SUM(sales_amount) AS daily_revenue,
     SUM(SUM(sales_amount)) OVER (ORDER BY order_date) AS cumulative_revenue
     FROM gold.fact_sales
     GROUP BY order_date
     ORDER BY order_date;
