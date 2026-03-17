# Verify the Data
SELECT COUNT(*) FROM transactions;

# Preview the table
SELECT * FROM transactions;

# How many transactions are fraud vs normal.
SELECT class, COUNT(*) AS total_transactions FROM transactions
GROUP BY class;

# Calculate fraud percentage
SELECT COUNT(CASE WHEN class = 1 THEN 1 END) * 100.0 / COUNT(*) AS fraud_percentage FROM transactions;

# Average transaction amount (Fraud vs Normal)
SELECT class, AVG(amount) AS avg_transaction_value FROM transactions
GROUP BY class;

# High value transactions
SELECT COUNT(*) AS transactions_above_1000 FROM transactions
WHERE amount > 1000;

# Fraud among high value transactions
SELECT COUNT(*) AS fraud_transactions_above_1000
FROM transactions
WHERE amount > 1000 AND class = 1;

# Fraud by transaction amount range
SELECT
CASE
WHEN amount < 10 THEN 'Low Value'
WHEN amount BETWEEN 10 AND 100 THEN 'Medium Value'
WHEN amount BETWEEN 100 AND 500 THEN 'High Value'
ELSE 'Very High Value'
END AS transaction_category,

COUNT(*) AS total_transactions,
SUM(class) AS fraud_cases

FROM transactions

GROUP BY transaction_category
ORDER BY total_transactions DESC;

# Top 10 largest transactions
SELECT amount, class FROM transactions
ORDER BY amount DESC
LIMIT 10; 

# Fraud rate by amount category
SELECT transaction_category, fraud_cases, total_transactions, (fraud_cases * 100.0 / total_transactions) AS fraud_rate

FROM (

SELECT
CASE
WHEN amount < 10 THEN 'Low'
WHEN amount BETWEEN 10 AND 100 THEN 'Medium'
WHEN amount BETWEEN 100 AND 500 THEN 'High'
ELSE 'Very High'
END AS transaction_category,

COUNT(*) AS total_transactions,
SUM(class) AS fraud_cases

FROM transactions

GROUP BY transaction_category

) AS fraud_analysis;