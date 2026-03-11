----data exploration-- understand the structure and sixe of the data
----Preview the sales data 
SELECT TOP 10* FROM gold.fact_sales;

-----COUNT records in each table
SELECT COUNT(*) AS Totalsales
FROM gold.fact_sales;

SELECT COUNT (*) AS TotalProducts
FROM gold.dim_products;

select COUNT(*) AS TotalCustomers
FROM gold.dim_customers;

-----check the date range of our dataset
SELECT
MIN(order_date) AS FirstOrder,
MAX(order_date) AS LastOrder
FROM gold.fact_sales;