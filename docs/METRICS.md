# Business metrics — definitions proposed for verification

No measured results are available. These definitions are **proposed**; align them with the real dataset and any original project specification.

| Metric | Proposed definition | Important assumption |
| --- | --- | --- |
| Total sales | Sum of Quantity × UnitPrice on valid order lines | Gross, before unverified discounts/refunds |
| Order count | Distinct orders containing eligible order items | Decide whether canceled/zero-value orders count |
| Average order value | Total sales / order count | Same filtered population |
| Pizzas sold | Sum of valid item quantities | Confirm how bundle items are counted |
| Pizzas per order | Pizzas sold / order count | Consistent order-grain denominator |
| Hourly demand | Distinct orders by hour of order timestamp | Timezone and local date conversions |
| Category/size sales | Sum of eligible line amounts grouped by category/size | Validate blanks and category normalization |

**Validation procedure:** compare SQL results against source totals, then compare measures in Power BI Desktop under identical filters. Record discrepancies, explanations and actual numbers only after source upload.
