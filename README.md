# Retail Sales Data Analysis

## Project Overview
This project analyzes 125K+ retail transactions and 6.8K marketing campaign responses to understand customer purchasing behavior, revenue trends, and campaign effectiveness.

The analysis combines Python, SQL, and Power BI to clean, process, and visualize retail sales data, enabling insights into customer segmentation and marketing performance.

## Objectives
- Clean and prepare raw retail transaction data.
- Analyze customer purchasing behavior.
- Identify top high-value customers.
- Evaluate the impact of customer responses on revenue.
- Visualize sales trends and customer segments.
- Export cleaned and analyzed datasets for reporting.

## Dataset Description
**Source:** Kaggle Retail Dataset

## Files Used
### Input Files
- `Retail_Data_Transactions.csv`
  - `customer_id`
  - `trans_date`
  - `tran_amount`
Contains 125,000+ transaction records representing customer purchases.

- `Retail_Data_Response.csv`
  - `customer_id`
  - `response`  
    *(0 = No Response, 1 = Responded)*


## Tools & Technologies
- Python
- Pandas
- Matplotlib
- Jupyter Notebook
- SQL
- Power BI


## Data Processing (Python)

The dataset was cleaned and processed using Python (Pandas).

Key steps performed:
- Removed invalid transactions
- Converted transaction dates to datetime format
- Extracted year and month features
- Integrated transaction and campaign response data
- Calculated customer-level metrics for analysis

## SQL Analysis

SQL queries were used to analyze customer transactions and campaign performance.
- Database Setup
- Total Number of Transactions
- Total Revenue
- Average Transaction Value
- Top 10 Customers by Spending
- Customer Transaction Frequency
- Response Distribution
- Average Spending by Response
- Total Revenue by Response
- High Value Customers

## Power BI Dashboard

An interactive Power BI dashboard was created to visualize key business insights.

### KPI Metrics

The dashboard includes the following KPIs:
- Total Revenue
- Total Transactions
- Average Transaction Value
- Total Customers
- Campaign Response Rate

### Dashboard Visualizations

Revenue Trend: Monthly revenue trend across years

Campaign Effectiveness: Comparison of spending between campaign responders and non-responders

Customer Segmentation
  Customers categorized as:
  - Low Value
  - Medium Value
  - High Value

Top Customers: Top 10 customers contributing to revenue

## Key Insights
1. Campaign responders show higher average transaction value, indicating positive campaign impact.
2. A small segment of customers contributes a large portion of total revenue.
3. Transaction trends reveal seasonal variations in revenue.
4. Customer segmentation helps identify high-value customers for targeted marketing strategies.

## Conclusion
This project demonstrates an end-to-end data analysis pipeline:
- Raw data → cleaned data → analysis → visualization → export  
It showcases practical data analytics using Python and Pandas.


## License
This project is created for educational and learning purposes.




