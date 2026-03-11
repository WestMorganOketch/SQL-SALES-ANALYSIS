/*
Business metrics
Key performance Indicators for the company:
1. Total Sales: The total revenue generated from sales.
*/
----Total revenue
SELECT SUM(sales_amount) AS TotalRevenue
FROM gold.fact_sales;

----Total Orders
SELECT COUNT(DISTINCT order_number) AS TotalOrders
FROM gold.fact_sales;

-----TOTAL QUANTITY SOLD
SELECT SUM(quantity) AS TotalQuantitySold
FROM gold.fact_sales;

-----AVERAGE ORDER VALUE
SELECT SUM(Sales_Amount)/COUNT(DISTINCT order_number) AS AverageOrderValue
FROM gold.fact_sales;
