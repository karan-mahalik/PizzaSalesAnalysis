/*
ILLUSTRATIVE, READ-ONLY SQL SERVER QUERIES.
Not original Karan Mahalik project code; never executed against his data.
Requires the PROPOSED dbo.Orders and dbo.OrderItems schema from
01_schema_contract.sql and reviewed, valid rows.
*/

-- 1. Sales, order count, AOV, pizzas sold and pizzas per order
WITH OrderValue AS (
  SELECT i.OrderID,
         SUM(CAST(i.Quantity AS decimal(18,2)) * i.UnitPrice) AS OrderRevenue,
         SUM(CAST(i.Quantity AS bigint)) AS PizzasSold
  FROM dbo.OrderItems AS i
  INNER JOIN dbo.Orders AS o ON o.OrderID = i.OrderID
  WHERE i.Quantity > 0 AND i.UnitPrice >= 0
  GROUP BY i.OrderID
)
SELECT SUM(OrderRevenue) AS TotalSales,
       COUNT(*) AS OrderCount,
       CAST(SUM(OrderRevenue)/NULLIF(COUNT(*),0) AS decimal(18,2)) AS AOV,
       SUM(PizzasSold) AS TotalPizzasSold,
       CAST(CAST(SUM(PizzasSold) AS decimal(18,2))/NULLIF(COUNT(*),0) AS decimal(18,2)) AS PizzasPerOrder
FROM OrderValue;

-- 2. Monthly sales (orders with valid items only)
WITH OrderValue AS (
  SELECT o.OrderID, o.OrderDateTime,
         SUM(CAST(i.Quantity AS decimal(18,2)) * i.UnitPrice) AS Revenue
  FROM dbo.Orders AS o
  JOIN dbo.OrderItems AS i ON i.OrderID = o.OrderID
  WHERE i.Quantity > 0 AND i.UnitPrice >= 0
  GROUP BY o.OrderID, o.OrderDateTime
)
SELECT DATEFROMPARTS(YEAR(OrderDateTime), MONTH(OrderDateTime),1) AS SalesMonth,
       COUNT(*) AS Orders, SUM(Revenue) AS Sales
FROM OrderValue
GROUP BY DATEFROMPARTS(YEAR(OrderDateTime), MONTH(OrderDateTime),1)
ORDER BY SalesMonth;

-- 3. Hourly order volume: confirm source timezone first
SELECT DATEPART(HOUR,o.OrderDateTime) AS OrderHour,
       COUNT(DISTINCT o.OrderID) AS Orders
FROM dbo.Orders AS o
GROUP BY DATEPART(HOUR,o.OrderDateTime)
ORDER BY OrderHour;

-- 4. Category and size comparisons
SELECT i.Category, i.Size,
       SUM(CAST(i.Quantity AS decimal(18,2)) * i.UnitPrice) AS Sales,
       SUM(CAST(i.Quantity AS bigint)) AS PizzasSold
FROM dbo.OrderItems AS i
WHERE i.Quantity > 0 AND i.UnitPrice >= 0
GROUP BY i.Category, i.Size
ORDER BY Sales DESC;

-- 5. Pizza-level revenue ranking
SELECT i.PizzaName,
       SUM(CAST(i.Quantity AS decimal(18,2)) * i.UnitPrice) AS Sales,
       DENSE_RANK() OVER (ORDER BY SUM(CAST(i.Quantity AS decimal(18,2)) * i.UnitPrice) DESC) AS SalesRank
FROM dbo.OrderItems AS i
WHERE i.Quantity > 0 AND i.UnitPrice >= 0
GROUP BY i.PizzaName
ORDER BY SalesRank, i.PizzaName;
