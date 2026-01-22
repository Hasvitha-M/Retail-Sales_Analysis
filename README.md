# Retail Sales Data Analysis

## Project Overview
This project performs a structured analysis of retail sales data using Python and Pandas.  
The goal is to clean raw data, perform customer-level analysis, visualize key trends, and export final datasets for reporting and dashboards.
The entire workflow is implemented in a Jupyter Notebook ('retail_analysis.ipynb').

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

###Input Files
- `Retail_Data_Transactions.csv`
  - `customer_id`
  - `trans_date`
  - `tran_amount`

- `Retail_Data_Response.csv`
  - `customer_id`
  - `response`  
    *(0 = No Response, 1 = Responded)*


## Tools & Technologies
- Python
- Pandas
- Matplotlib
- Jupyter Notebook

## Project Workflow

### 1.Data Loading
- Loaded transaction and response datasets using Pandas
- Verified structure and data types using `.head()` and `.info()`

### 2.Data Cleaning
- Removed invalid or zero transaction amounts
- Ensured consistent data types for analysis
- Handled missing response values after merging

### 3.Data Preparation
- Converted transaction date to datetime format
- Created derived columns:
  - `year`
  - `month`
- Merged transaction data with response data using `customer_id`

### 4.Customer-Level Analysis
Created a separate analysis dataframe with:
- Total spending per customer
- Number of transactions
- Average transaction value
- Customer response status

### 5.Customer Segmentation
Customers were segmented based on total spending:
- Low Value
- Medium Value
- High Value

### 6.Exploratory Data Analysis & Visualization
The notebook includes visualizations for:
- Monthly sales trends
- Revenue comparison by response
- Average transaction value by response
- Customer segment distribution
- Top 10 customers by total spending

These visualizations help identify trends, customer behavior, and high-value customers.

### 7.Data Export
The final step exports two CSV files:

- `Retail_Transactions_Enhanced.csv`  
  → Cleaned and enriched transaction-level data

- `Retail_Customer_Analysis.csv`  
  → Customer-level aggregated analysis data

These files can be reused for Excel dashboards and reporting.

## Key Insights

- A small percentage of customers contribute a significant portion of total revenue.
- Customers who responded to campaigns generally spend more.
- Clear patterns are visible in monthly sales trends.
- High-value customers are crucial for revenue growth.

## Output Files

Retail_Transactions_Enhanced.csv
→ Cleaned transaction-level dataset with additional features.

Retail_Customer_Analysis.csv
→ Customer-level aggregated analysis dataset.

## How to Run

1. Clone or download this repository.
2. Open `retail_analysis.ipynb` in Jupyter Notebook.
3. Run all cells sequentially.
4. Generated CSV files will be saved in the project directory.

## Conclusion
This project demonstrates an end-to-end data analysis pipeline:
- Raw data → cleaned data → analysis → visualization → export  
It showcases practical data analytics skills using Python and Pandas.


## License
This project is created for educational and learning purposes.

