-- GROUP BY
-- Count customers in each city.
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;

-- Count products in each category.
SELECT category, COUNT(*) AS total_products
FROM products
GROUP BY category;

-- Find average price per category.
SELECT category, AVG(price) AS avg_price 
FROM products
GROUP BY category;

-- Find total quantity ordered per product.
SELECT product_id, SUM(quantity) AS total_quantity
FROM orders
GROUP BY product_id;

-- Find number of orders per customer.
SELECT customer_id, COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id;