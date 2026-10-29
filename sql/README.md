# SQL Server — original files and illustrative starters

## Original uploaded SQL

- [Pizza_Sales.sql](Pizza_Sales.sql) — Uploaded SQL Server source script

## Previously prepared examples

- [01_schema_contract.sql](01_schema_contract.sql) — **proposed** schema; not extracted from source.
- [02_analysis_queries.sql](02_analysis_queries.sql) — **illustrative**, read-only example queries; not the uploaded original.
- These examples must be adapted if used; original source structures take priority.

## Safety and execution

The uploaded `sql/Pizza_Sales.sql` queries a **flat `pizza_sales` table**, unlike the illustrative two-table `Orders`/`OrderItems` schema in the starter SQL. It contains a `CREATE DATABASE` statement and a `November,` literal in monthly ordering that merits review. Its top-five product queries count order-line records rather than distinct order IDs. No code was changed.

Use a disposable, isolated SQL Server database. Inspect each script before execution. This repository's GitHub Actions only checks file structure and links, **not** T-SQL syntax or runtime results. See [setup](../docs/SETUP.md).
