# SQL Analysis

## Overview

This folder contains the SQL queries used to analyze the Texas county expenditure dataset. The queries explore how government spending is distributed across counties, agencies, and major spending categories.

The queries are written to support analysis and visualization in Power BI after the dataset has been cleaned using Python.

The cleaned dataset is imported into a SQL table named:

expenditures

---

## SQL Script

Main SQL file:

expenditure_analysis_queries.sql

This script contains several analytical queries designed to summarize and compare government expenditures.

---

## Queries Included

### 1. Total Spending by County

Calculates the total amount of spending associated with each Texas county.

Records with the county value `UNKNOWN` are excluded because they represent expenditures not tied to a specific county.

Example insight:
Identify which counties receive the highest levels of government spending.

---

### 2. Total Spending by Major Spending Category

Aggregates expenditures by major spending category.

This query helps show how funds are distributed across major areas such as public safety, infrastructure, or administrative spending.

Example insight:
Determine which categories account for the largest portion of spending.

---

### 3. Total Spending by Agency

Calculates total expenditures associated with each government agency.

Example insight:
Identify which agencies are responsible for the largest spending amounts.

---

### 4. Spending by County and Major Spending Category

Breaks down spending within each county by major spending category.

This query helps identify how spending priorities differ across counties.

Example insight:
Compare the allocation of spending categories between counties.

---

### 5. County Share of Total Spending

Calculates the percentage of total county-level spending represented by each county.

This helps highlight which counties account for the largest share of total expenditures.

Example insight:
Understand how overall spending is distributed across counties.

---

### 6. Top Spending Category Within Each County

Identifies the major spending category with the highest total spending for each county.

This query uses ranking to determine the largest category within each county.

Example insight:
Determine the primary spending priority for each county.

---

## Notes

Some records contain `UNKNOWN` in the county field. These represent expenditures that are not tied to a specific county, such as statewide administrative costs or legislative operations.

These records were excluded from most county-level analyses to allow clearer comparisons between counties.

---

## Usage

1. Import the cleaned dataset into a SQL table named:

expenditures

2. Run the queries contained in:

expenditure_analysis_queries.sql

3. Use the results to support further analysis or visualizations in Power BI.

---

## Purpose

These SQL queries demonstrate common analytical operations including:

- aggregation using `SUM`
- grouping with `GROUP BY`
- ranking using window functions
- percentage calculations
- filtering records with `WHERE`

The analysis supports a broader project that includes Python data cleaning and Power BI dashboard visualization.
