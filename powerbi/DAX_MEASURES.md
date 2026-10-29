# Pizza Sales — illustrative DAX measures

**Not the original report's DAX.** Examples use proposed `Orders` and `OrderItems` tables, correct relationship direction and validated nonnegative quantities/prices. Replace with actual field names after uploading the PBIX.

```dax
Total Sales =
SUMX ( OrderItems, OrderItems[Quantity] * OrderItems[UnitPrice] )

Order Count =
DISTINCTCOUNT ( Orders[OrderID] )

Average Order Value =
DIVIDE ( [Total Sales], [Order Count] )

Pizzas Sold =
SUM ( OrderItems[Quantity] )

Pizzas per Order =
DIVIDE ( [Pizzas Sold], [Order Count] )
```

**Important:** Order-level counts and item-level slicers may not filter identically. Validate unmatched orders, blank item fields, canceled orders, discounts, returns and tax handling against original project requirements. No Power BI refresh has been performed.
