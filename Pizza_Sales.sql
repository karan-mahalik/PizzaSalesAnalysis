-- Create database for pizza store 
Create DATABASE Pizza_Store;

--Imprt the flat file that is oin csv format & out table name is 
-- Pizza_Sales
SELECT * FROM pizza_sales;

-- Some are Bussiness Insights that we need to create & share with seniors
-- 1. Calculate the Total Revenue from all pizza orders.
      Select 
      ROUND(SUM(quantity * unit_price),2) As Total_Revenue 
      From pizza_sales;
-- 2. Calculate the Average Order Value (AOV).
      Select (Round(SUM(quantity * unit_price) 
             / COUNT(Distinct order_id),2)) 
             AS Average_Order_Value  
             From pizza_sales;
-- 3. Calculate the Total Number of Pizzas Sold.
      Select 
      SUM(quantity) 
      AS TotalPizzas_Sold 
      From pizza_sales;
-- 4. Calculate the Total Number of Orders placed.  
      Select 
      COUNT(DISTINCT order_id) 
      AS Pizzas_Sold 
      From 
      pizza_sales;
-- 5. Calculate the Average Number of Pizzas Sold per Order.
      Select 
      CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) 
      / CAST(COUNT(DISTINCT order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2)) AS Average_Number_of_Pizzas_Sold_per_Order
      From pizza_sales;


----------------------------------------------------------------------------------------------------------------------
-- 1. Calculate the total number of orders for each day
--    to analyze the daily trend of total orders.
      SELECT 
      DATENAME(WEEKDAY,Order_DATE) AS WEEKDAYS, 
      COUNT(DISTINCT order_id) Count_Orders
      FROM pizza_sales 
      GROUP BY
      DATENAME(WEEKDAY,Order_DATE)
      ORDER BY
      CASE DATENAME(WEEKDAY,Order_DATE)
                   WHEN 'Monday' THEN 1
                   WHEN 'Tuesday' THEN 2
                   WHEN 'Wednesday' THEN 3
                   WHEN 'Thursday' THEN 4
                   WHEN 'Friday' THEN 5
                   WHEN 'Saturday' THEN 6
                   WHEN 'Sunday' THEN 7
      END;

-----Weekday vs Weekend orders




-- 2. Calculate the total number of orders for each hour
--    to analyze the hourly trend of total orders.
Select DATEPART(HOUR, order_time) AS Hour_Wise, 
       COUNT(DISTINCT order_id) AS Count_Orders 
       From pizza_sales
       GROUP BY DATEPART(HOUR, order_time)
       ORDER BY  DATEPART(HOUR, order_time) ASC;


-- 3. Calculate the percentage of total sales contributed
--    by each pizza category.
SELECT pizza_category,
       SUM(total_price) AS Total_Sales,
       CONCAT(ROUND(SUM(total_price) * 100.0 / SUM(SUM(total_price)) OVER(),2), '%') 
       AS Sales_Percentage 
       FROM pizza_sales 
       GROUP BY 
       pizza_category;




--Monthly trend for total orders.
Select 
     DATENAME(MONTH,order_date) AS Month_Wise_Trend,
     COUNT(Distinct order_id) AS Total_Orders 
     From pizza_sales
     Group by 
     DATENAME(MONTH,order_date)
     ORDER BY
     CASE DATENAME(MONTH,order_date)
          WHEN 'January' Then 1
          WHEN 'February' Then 2
          WHEN 'March' Then 3
          WHEN 'April' Then 4
          WHEN 'May' Then 5
          WHEN 'June' Then 6
          WHEN 'July' Then 7
          WHEN 'August' Then 8
          WHEN 'September' Then 9
          WHEN 'October' Then 10
          WHEN 'November,' Then 11
          WHEN 'December' Then 12
     END;





--Percentage of sales by pizza size
Select 
     pizza_size, 
     Round(SUM(total_price),2) AS Total_Sales,
     CONCAT( Round(SUM(total_price) * 100.0 / SUM(SUM(total_price)) OVER(),2), '%') AS
     Percentage_Pizza_Sales 
     From pizza_sales
     GROUP BY pizza_size; 



--Top 5 best selleers by revenue, quantity, total orders.
Select TOP 5 pizza_name, 
       SUM(total_price) AS Revenue, 
       SUM(quantity) AS Total_Quantity ,
       Count(order_id) As Total_Orders 
       From pizza_sales
       GROUP BY pizza_name
       ORDER BY
       Revenue Desc,
       Total_Quantity Desc,
       Total_Orders  DESC;



--Top 5 Worst selleers by revenue, quantity, total orders.

Select TOP 5 pizza_name, 
       SUM(total_price) AS Revenue, 
       SUM(quantity) AS Total_Quantity ,
       Count(order_id) As Total_Orders 
       From pizza_sales
       GROUP BY pizza_name
       ORDER BY
       Revenue ASC,
       Total_Quantity ASC,
       Total_Orders  ASC;