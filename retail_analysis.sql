#CREATE DATABASE
CREATE DATABASE retail_sales_analysis;

USE retail_sales_analysis;


#CREATE TABLES
CREATE TABLE retail_transactions (
    customer_id INT,
    trans_date DATE,
    tran_amount DECIMAL(10,2)
);
CREATE TABLE retail_responses (
    customer_id INT,
    response INT
);



#TOTAL NUMBER OF TRANSACTIONS
SELECT COUNT(*) AS total_transactions
FROM retail_transactions;


#TOTAL REVENUE
SELECT SUM(tran_amount) AS total_revenue
FROM retail_transactions;


#AVERAGE TRANSACTION VALUE
SELECT AVG(tran_amount) AS avg_transaction_value
FROM retail_transactions;


#TOP 10 CUSTOMERS BY SPENDING
SELECT
    customer_id,
    SUM(tran_amount) AS total_spent
FROM retail_transactions
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;


#CUSTOMER TRANSACTION FREQUENCY
SELECT
    customer_id,
    COUNT(*) AS transaction_count
FROM retail_transactions
GROUP BY customer_id
ORDER BY transaction_count DESC;


#RESPONSE DISTRIBUTION
SELECT
    response,
    COUNT(*) AS total_customers
FROM retail_responses
GROUP BY response;


#AVERAGE SPENDING BY RESPONSE
SELECT
    r.response,
    AVG(t.tran_amount) AS avg_spending
FROM retail_transactions t
JOIN retail_responses r
ON t.customer_id = r.customer_id
GROUP BY r.response;


#TOTAL REVENUE BY RESPONSE
SELECT
    r.response,
    SUM(t.tran_amount) AS total_revenue
FROM retail_transactions t
JOIN retail_responses r
ON t.customer_id = r.customer_id
GROUP BY r.response;


# HIGH VALUE CUSTOMERS
SELECT
    customer_id,
    SUM(tran_amount) AS total_spent
FROM retail_transactions
GROUP BY customer_id
HAVING SUM(tran_amount) > 2000
ORDER BY total_spent DESC;