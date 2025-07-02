# Task6
Task6:Sales Trend Analysis Using Aggregations
 Objective
To analyze monthly sales performance using SQL aggregation functions — focusing on:

Total revenue per month

Order volume per month

 Tools Used
Database: MySQL 
Dataset: online_sales 
Dataset Structure (onlinesales)
Column Name	Data Type	Description
Transaction ID	INT	Unique ID for each transaction
Date	DATE/TEXT	Order date
Total Revenue	FLOAT	Revenue generated per transaction

 SQL Script
sql
Copy
Edit
SELECT
    YEAR(`Date`) AS order_year,
    MONTH(`Date`) AS order_month,
    SUM(`Total Revenue`) AS total_revenue,
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM
    onlinesales
GROUP BY
    YEAR(`Date`), MONTH(`Date`)
ORDER BY
    order_year, order_month;
  Output Columns
Column Name	Description
order_year	Year extracted from the order date
order_month	Month extracted from the order date
total_revenue	Sum of revenue in the month
order_volume	Count of unique orders in the month

 Deliverables
SQL Script (task6_sales_trend.sql)

 Result Table (CSV )

This README File
