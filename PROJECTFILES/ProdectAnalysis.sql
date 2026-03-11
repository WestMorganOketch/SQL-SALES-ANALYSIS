/*
Product Performance Analysis
What are the top performing products?


*/
SELECT
p.product_name,
SUM(f.sales_amount) AS Total_Sales,
SUM(f.quantity) AS Units_Sold
FROM gold.fact_sales f
JOIN gold.dim_products p 
	ON f.product_key = p.product_key
	GROUP BY p.product_name
	ORDER BY Total_Sales DESC