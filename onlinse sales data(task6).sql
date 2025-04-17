use sales;
-- EXTRACTING MONTH FROM DATE COLUMN
SELECT 
  CASE EXTRACT(MONTH FROM Date)
    WHEN 1 THEN 'January'
    WHEN 2 THEN 'February'
    WHEN 3 THEN 'March'
    WHEN 4 THEN 'April'
    WHEN 5 THEN 'May'
    WHEN 6 THEN 'June'
    WHEN 7 THEN 'July'
    WHEN 8 THEN 'August'
    WHEN 9 THEN 'September'
    WHEN 10 THEN 'October'
    WHEN 11 THEN 'November'
    WHEN 12 THEN 'December'
  END AS MonthName
FROM online_sale_data;
-- GROUPING YEAR AND MONTH
SELECT
YEAR(Date) As SaleYear,
MONTH(Date) As SaleMonth,
COUNT(*) AS TotalSales
From online_sales
Group by YEAR(Date), MONTH(Date)
ORDER by YEAR(Date), MONTH(Date);
-- calculating sum of revenue
SELECT SUM(CAST(`Total_Revenue` AS DECIMAL(10,2))) AS TotalRevenue
FROM online_sales;
-- counting transaction id
select COUNT(DISTINCT TRANSACTION_ID) AS VOLUME
from online_sales;
-- sorting the data
 SELECT DISTINCT Transaction_ID
 FROM ONLINE_SALES 
 ORDER BY Transaction_ID
 limit 0,1000;
 -- limiting for a specic time period
 SELECT DISTINCT Transaction_ID
 FROM ONLINE_SALES 
 where date  BETWEEN '01-01-2024' AND '31-01-2024'
 ORDER BY Transaction_ID;