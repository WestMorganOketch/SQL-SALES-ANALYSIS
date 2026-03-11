/*
Time_Series_Analysis
How do the sales trend overtime
the montthly revenue and the daily sales
*/
SELECT
      YEAR(order_date) AS Year,
      MONTH(order_date) AS month,
      SUM(sales_amount) AS revenue
      FROM gold.fact_sales
      GROUP BY YEAR(order_date), MONTH(order_date)
      ORDER BY year, month;