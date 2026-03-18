# Data Documentation

## Overview
This folder contains the datasets used in the Texas County Expenditure Analysis project. The data represents government expenditures categorized by county, agency, and major spending category for the 2024 fiscal year.

The raw dataset was cleaned using Python before being used for SQL analysis and Power BI visualization.

---

## Folder Structure

### raw
Contains the original dataset before any preprocessing or cleaning.

### cleaned
Contains the processed dataset produced by the Python data cleaning script.  
This dataset is used for all SQL queries and Power BI dashboards.

---

## Dataset Description

The dataset includes expenditure records from multiple Texas government agencies. Each record represents spending associated with a county and categorized by a major spending category.

### Columns

| Column | Description |
|------|------|
| fiscal_year | Fiscal year of the expenditure record |
| agency_number_and_name | Combined identifier for the agency |
| county | Texas county associated with the expenditure |
| major_spending_category | High-level category describing the type of spending |
| amount | Dollar amount of the expenditure |
| agency_number | Unique identifier for the agency |
| agency_name | Name of the government agency responsible for the expenditure |

---

## Data Cleaning

The raw dataset was cleaned using a Python script located in:

src/data_cleaning.py

Cleaning steps included:

- Standardizing column names
- Converting currency values to numeric format
- Removing duplicate records
- Standardizing county names to uppercase
- Handling missing values
- Exporting a cleaned dataset for analysis

---

## Special Values

### UNKNOWN County

Some records contain `UNKNOWN` in the county field. These represent expenditures that are not tied to a specific Texas county, such as:

- statewide programs
- legislative operations
- administrative spending

These records were excluded from county comparison queries in SQL.

---

## Dataset Size

Cleaned dataset summary:

- Records: 44,405
- Columns: 7
- Fiscal Year: 2024

---

## Usage in Project

The cleaned dataset is used for:

- SQL queries analyzing county spending patterns
- Power BI dashboards visualizing expenditure distributions
- comparative analysis across counties, agencies, and spending categories

---

## Notes

This dataset is used for educational and analytical purposes as part of a data analytics portfolio project demonstrating a full workflow from data preparation to business intelligence visualization.
