# Credit Card Fraud Detection & Transaction Risk Analysis using SQL

## Project Overview
This project analyzes credit card transaction data to identify fraud prevalence, transaction value patterns, and amount-based risk trends using SQL.

## Tools Used
- MySQL
- SQL
- MySQL Workbench

## Dataset
A 50,000-row sample of credit card transaction data was used for analysis to simulate a realistic fintech fraud monitoring workflow.

## Business Questions
- What percentage of transactions are fraudulent?
- Do fraudulent transactions differ in value from normal transactions?
- Are certain transaction amount ranges associated with higher fraud rates?
- How many high-value transactions are fraudulent?

## Key Insights
- Fraud transactions account for a very small percentage of all transactions.
- Fraud detection is challenging because the dataset is highly imbalanced.
- High-value transactions require closer scrutiny due to their potential financial impact.
- Amount-band analysis helps identify transaction ranges with relatively higher fraud concentration.

## Files
- `fraud_analysis_database_creation_queries.sql` → SQL queries used for the database creation in the project
- `fraud_analysis_queries.sql` → SQL queries used in the project
- `README.md` → project summary and findings
- `insights_report.txt` → project summary and interpretation


## Skills Demonstrated
- SQL querying
- aggregation and filtering
- CASE statements
- fraud rate analysis
- business insight generation
