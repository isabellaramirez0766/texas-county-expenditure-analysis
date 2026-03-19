# Power BI Dashboard

## Overview

This folder contains the Power BI dashboard developed for the Texas County Expenditure Analysis project. The dashboard provides an interactive view of government spending across Texas counties, agencies, and major spending categories.

The dashboard allows users to explore spending patterns through filters and interactive visuals.

---

## Dashboard File

Power BI file:

```
texas_county_expenditure_dashboard.pbix
```

This file can be opened using **Power BI Desktop**.

---

## Dashboard Preview

![texas-county-expenditure-analysis](dashboard_preview.png)

---

## Dashboard Features

The dashboard includes several visualizations designed to explore government expenditure data.

### KPI Cards
Summary metrics displayed at the top of the dashboard including:

- Total Government Spending
- Number of Texas Counties Represented
- Number of Government Agencies

### Spending by County
A bar chart showing the total amount of spending associated with each county.

This visual helps identify which counties receive the highest levels of government expenditure.

### Spending by Major Category
A bar chart showing the distribution of spending across major categories such as public assistance, infrastructure, and administrative costs.

### Top Counties by Category
A stacked bar chart highlighting the counties with the highest spending levels and how that spending is distributed across categories.

### Category Spending by County
A matrix visual that compares spending categories across counties, making it easy to identify patterns and differences in spending priorities.

### County Category Breakdown
A pie chart that displays the spending distribution for a selected county. Users can select a county using the slicer to see how spending is allocated across major categories.

---

## Interactive Filters

The dashboard includes slicers that allow users to filter the data dynamically.

Available filters include:

- County
- Major Spending Category
- Agency Name

Selecting a county updates the visuals across the dashboard, allowing detailed exploration of spending patterns.

---

## Data Source

The Power BI dashboard uses the cleaned dataset located in the project repository:

```
data/cleaned/texas_county_expenditures_cleaned.csv
```

This dataset was prepared using a Python data cleaning script.

---

## Purpose

The dashboard demonstrates how data visualization tools like Power BI can be used to analyze public expenditure data and identify spending patterns across geographic regions and government agencies.

This dashboard is part of a broader analytics workflow that includes:

- Python data cleaning
- SQL data analysis
- interactive data visualization
