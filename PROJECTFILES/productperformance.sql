/*
product performance
Identify the top products
*/
SELECT
p.product_name,
SUM(f.sales_amount) AS revenue,
RANK() OVER(
ORDER BY SUM(f.sales_amount) DESC 
) product_rank
FROM gold.fact_sales f
JOIN gold.dim_products p
ON f.product_key = product_key
GROUP BY p.product_name