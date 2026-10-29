# Original uploaded source: initial static review

This is a **read-only text/metadata review**, not a successful SQL or Power BI run.

The uploaded `sql/Pizza_Sales.sql` queries a **flat `pizza_sales` table**, unlike the illustrative two-table `Orders`/`OrderItems` schema in the starter SQL. It contains a `CREATE DATABASE` statement and a `November,` literal in monthly ordering that merits review. Its top-five product queries count order-line records rather than distinct order IDs. No code was changed.

## Files used as evidence

- [sql/Pizza_Sales.sql](../sql/Pizza_Sales.sql) — Uploaded SQL Server source script
- [data/raw/pizza_sales.csv](../data/raw/pizza_sales.csv) — Raw pizza sales CSV
- [data/reference/Excel_Interview_Practice_Dataset.xlsx](../data/reference/Excel_Interview_Practice_Dataset.xlsx) — Separate interview-practice Excel workbook
- [powerbi/Pizza_Sales_Dashboard.pbix](../powerbi/Pizza_Sales_Dashboard.pbix) — Uploaded Power BI report

## Next QA steps

- Confirm source ownership, permission to publish and presence of any personal or client records.
- Inspect workbook sheets and/or CSV field names, row counts, duplicates and types.
- Review original SQL for destructive statements and metric-grain errors before running it on a **development** database.
- Open/refresh the uploaded PBIX in Power BI Desktop using appropriate data connections.
- Reconcile business KPIs across dataset, SQL and dashboard; record verified findings.

**No uploaded binary or SQL source bytes were changed by the folder reorganization.**
