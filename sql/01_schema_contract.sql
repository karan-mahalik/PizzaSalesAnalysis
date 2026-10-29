/*
PIZZA SALES — PROPOSED MODEL, NOT ACTUAL PROJECT SCHEMA.
This file is a field-level contract for discussion, not executable DDL.
Compare every field with uploaded source data before importing.
Orders: dbo.Orders
  OrderID nvarchar(64) primary key
  OrderDateTime datetime2 (timezone must be confirmed)
Order line items: dbo.OrderItems
  OrderItemID nvarchar(64) primary key
  OrderID nvarchar(64) references Orders
  PizzaName nvarchar(200)
  Category nvarchar(100)
  Size nvarchar(50)
  Quantity int
  UnitPrice decimal(18,2)
Proposed gross sales = Quantity * UnitPrice. Discounts, taxes, refunds,
shipping, order cancellations and currency conventions are NOT verified.
*/
