-- INTERMEDIATE (16–30)
-- Aggregation Basics

-- Count total number of customers.
SELECT COUNT(*) AS total_customers
FROM customers;

-- Count total number of orders.
SELECT COUNT(*) AS total_orders
FROM orders;

-- Find average product price.
SELECT AVG(price) AS avg_price
FROM products;

-- Find minimum and maximum product price.
SELECT 
    MIN(price) AS min_price,
    MAX(price) AS max_price
FROM products;

-- Find total stock of all products.
SELECT SUM(stock) AS total_stock
FROM products;