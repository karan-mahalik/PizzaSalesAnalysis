# Pizza Sales Performance Analysis

**SQL Server · T-SQL · Power BI · DAX · Sales KPIs**

A portfolio case study of pizza-order performance based on the project described in Karan Mahalik's resume. The intended business questions cover revenue, orders, average order value, units sold, order timing, and product performance.

> **Status: framework prepared; original project files pending upload.** The source datasets, original SQL scripts, actual Power BI `.pbix`, screenshots and validated findings have not been supplied. Included SQL/DAX examples are proposed templates, not recovered original work or verified outputs.

## Business questions
- How much sales revenue is generated, and what is the average order value?
- How many distinct orders and pizzas sold are there?
- What are the hourly, daily, and monthly demand patterns?
- Which pizza categories, sizes, and products perform best?

## Repository layout
| Folder | Purpose |
| --- | --- |
| [data/](data/README.md) | Raw/cleaned authorized datasets, data dictionary |
| [sql/](sql/README.md) | Proposed table contract and illustrative read-only T-SQL |
| [powerbi/](powerbi/README.md) | Upload location for original Power BI report and DAX notes |
| [docs/](docs/SETUP.md) | Setup, metric definitions, quality checks and evidence |
| [scripts/](scripts/validate_repository.py) | Static integrity validation; not SQL/Power BI execution |

## Work documented in the resume
SQL KPIs for total sales, order count, AOV, pizzas sold and pizzas per order; trends by hour/day/month; comparisons across category, size, and pizza; and a Power BI dashboard with KPI cards, charts, slicers and DAX measures. These are **resume-derived claims**, not independently verified outcomes.

## How to complete the project
1. Upload original authorized files into [data/raw/](data/raw/README.md), [data/cleaned/](data/cleaned/README.md), [sql/](sql/README.md) and [powerbi/](powerbi/README.md) as appropriate.
2. Update [source manifest](docs/ASSET_MANIFEST.md) with real filenames, sources and privacy review.
3. Match SQL/DAX to actual columns; never modify original raw files just to fit the template.
4. Run static checks: `python scripts/validate_repository.py`.
5. Execute reviewed SQL against a **development** SQL Server instance and validate the original `.pbix` in Power BI Desktop; add only measured findings/screenshots.

[Metrics](docs/METRICS.md) · [Data quality](docs/DATA_QUALITY.md) · [Project evidence](docs/PROJECT_EVIDENCE.md)

**Author:** [Karan Mahalik](https://github.com/karan-mahalik) · [LinkedIn](https://www.linkedin.com/in/karan-mahalik-122438369/)
