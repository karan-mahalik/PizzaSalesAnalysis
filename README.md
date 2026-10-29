# Pizza Sales Performance Analysis

**SQL Server · T-SQL · Power BI · Sales KPIs**

Karan Mahalik's analytics project, now organized with its **uploaded source assets**, supporting materials, and independently authored documentation.

> **Status:** Uploaded datasets/workbooks, original SQL scripts and actual Power BI report files have been organized. **SQL Server execution, source/data privacy review, numeric reconciliation and Power BI Desktop refresh have not been completed.** Previously prepared starter SQL/DAX remains explicitly illustrative.

## Uploaded project files

| Area | Uploaded file | Purpose |
| --- | --- | --- |
| Data | [pizza_sales.csv](data/raw/pizza_sales.csv) | Raw pizza sales CSV |
| Data | [Excel_Interview_Practice_Dataset.xlsx](data/reference/Excel_Interview_Practice_Dataset.xlsx) | Separate interview-practice Excel workbook |
| SQL Server | [Pizza_Sales.sql](sql/Pizza_Sales.sql) | Uploaded SQL Server source script |
| Power BI | [Pizza_Sales_Dashboard.pbix](powerbi/Pizza_Sales_Dashboard.pbix) | Uploaded Power BI report |
| Documentation | [Pizza_Sales_BRD.pdf](docs/Pizza_Sales_BRD.pdf) | Business requirements PDF |
| Documentation | [Pizza_Sales_Interview_Presentation.pptx](docs/Pizza_Sales_Interview_Presentation.pptx) | Presentation |

## Business scope

Revenue, distinct orders, average order value, pizzas sold, order timing, sales by category and size, and best-/worst-selling products.

The scope is consistent with the supplied resume and supporting project materials. **No numerical result is asserted without executing and reconciling the original files.**

## How to reproduce and verify

See [Setup](docs/SETUP.md), [source-file review](docs/ORIGINAL_SOURCE_REVIEW.md), [data-quality checklist](docs/DATA_QUALITY.md) and [metric definitions](docs/METRICS.md). Do not execute SQL against production databases or assume the original PBIX refreshes successfully.

## Project structure

- [data/](data/README.md) — raw, cleaned and/or reference files
- [sql/](sql/README.md) — uploaded original SQL, plus *separately labeled illustrative starter SQL*
- [powerbi/](powerbi/README.md) — uploaded original PBIX; DAX examples are *not extracted from it*
- [docs/](docs/SETUP.md) — BRD/presentation/reference, [manifest](docs/ASSET_MANIFEST.md), validation and architecture
- [assets/](assets/README.md) — genuine screenshot location (no verified dashboard captures yet)
- [scripts/validate_repository.py](scripts/validate_repository.py) — static file/link check run by [GitHub Actions](.github/workflows/validate.yml)

## Important limitation

GitHub Actions validates **repository structure and simple relative Markdown links only**. It does not execute T-SQL, open Excel datasets for analytical QA, refresh Power BI, verify DAX calculations or perform a comprehensive secret/privacy scan.

**Maintained by:** [Karan Mahalik](https://github.com/karan-mahalik) · [LinkedIn](https://www.linkedin.com/in/karan-mahalik-122438369/)
