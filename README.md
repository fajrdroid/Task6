#  Task 6: Omline Sales Trend Analysis Using Aggregations

##  Objective

Analyze monthly revenue and order volume from the `online_sales` dataset using SQL aggregation functions.

##  Tools Used

- SQL (Tested on PostgreSQL)
- Dataset: `online_sales` table

##  Task Description

We were provided with an `online_sales` table containing the following fields:

- `order_id` (INT)
- `order_date` (DATE)
- `product_id` (INT)
- `amount` (DECIMAL)

Our objective was to analyze **monthly sales trends** using aggregation techniques in SQL.

##  What I Did

1. Extracted **year and month** from the `order_date` column.
2. Used `SUM(amount)` to calculate **monthly revenue**.
3. Used `COUNT(DISTINCT order_id)` to determine **order volume**.
4. Grouped the data by **year and month**.
5. Sorted results by **total revenue** in descending order.
6. Limited output to **top 3 months by revenue**.


##  SQL Query Used

```sql
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    total_revenue DESC
LIMIT 3;
```
