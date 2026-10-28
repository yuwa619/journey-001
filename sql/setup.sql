CREATE TABLE customers AS SELECT * FROM read_csv_auto('/Users/Yuwa/Projects/Analytic engineer/Project 1/Data/customers.csv');
SELECT COUNT(*) AS customer_count FROM customers;
SELECT * FROM customers ORDER BY customer_id LIMIT 5;
