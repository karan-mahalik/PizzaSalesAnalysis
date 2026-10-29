# Setup and reproduction plan — Pizza Sales Performance Analysis

**Inputs now available:** see [asset manifest](ASSET_MANIFEST.md). **None of the uploaded SQL/PBIX files has been runtime-validated here.**

1. Review `data/raw/pizza_sales.csv` and confirm its actual columns, date parsing, order grain and sharing permissions.
2. On a **new development SQL Server database**, review `sql/Pizza_Sales.sql`; it includes a `CREATE DATABASE` statement. Import the CSV into a staging table named `pizza_sales` with verified types before executing selected queries.
3. Treat `sql/01_schema_contract.sql` and `sql/02_analysis_queries.sql` as **illustrative only**; they use different modeled table names and are not drop-in replacements for the uploaded script.
4. Open `powerbi/Pizza_Sales_Dashboard.pbix` in Power BI Desktop, check data-source paths, refresh and the report's actual DAX and relationships.
5. Compare source-to-SQL-to-Power-BI totals, then document validated findings. The interview-practice workbook in `data/reference/` is not assumed to be used in the pizza analysis.

## Static validation
```bash
python scripts/validate_repository.py
```

The script checks required paths, zero-byte files, and simple relative Markdown links; it **does not run SQL Server or Power BI**, audit spreadsheet contents, or assert any measured KPI.
