# Cleaned Dataset

## Overview

This folder contains the cleaned dataset used for analysis in the Texas County Expenditure Analysis project.

The dataset was prepared using a Python data cleaning script to ensure consistency and usability for SQL analysis and Power BI visualization.

The cleaned dataset serves as the primary data source for the analytical queries and dashboard included in this repository.

---

## File

```
texas_county_expenditures_cleaned.csv
```

This dataset contains government expenditure records associated with Texas counties, agencies, and major spending categories.

---

## Dataset Structure

The cleaned dataset includes the following fields:

| Column | Description |
|------|------|
| fiscal_year | Fiscal year associated with the expenditure record |
| county | Texas county associated with the spending record |
| agency_number | Unique identifier for the government agency |
| agency_name | Name of the government agency responsible for the expenditure |
| major_spending_category | High-level category describing the type of spending |
| amount | Dollar amount of the expenditure |

---

## Data Cleaning Process

The dataset was cleaned using Python and pandas. Key preprocessing steps included:

- Standardizing column names
- Converting currency values to numeric format
- Removing duplicate records
- Handling missing or inconsistent values
- Preparing the dataset for SQL queries and Power BI visualization

The cleaning script can be found in:

```
src/cleaning_data.py
```

---

## Special Values

Some records contain the value `UNKNOWN` in the county column. These records represent expenditures that are not tied to a specific Texas county, such as statewide administrative spending.

In county-level analysis, these records may be excluded to ensure accurate comparisons between counties.

---

## Usage

This cleaned dataset is used for:

- SQL queries analyzing expenditure trends
- Power BI dashboard visualizations
- comparative analysis across counties and agencies

The dataset is imported into SQL as a table named:

```
expenditures
```

and loaded into Power BI for dashboard development.

---

## Notes

The cleaned dataset is intended for analytical purposes and demonstrates how data preparation supports downstream analysis and visualization workflows.
