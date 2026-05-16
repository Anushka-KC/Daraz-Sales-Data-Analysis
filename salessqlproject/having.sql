--  HAVING
-- Show cities with more than 50 customers.
SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city
HAVING COUNT(*) > 50;

-- Show categories where average price > 200.
SELECT category, AVG(price) AS avg_price
FROM products
GROUP BY category
HAVING AVG(price) > 200;

-- Show products ordered more than 100 times.
SELECT product_id, SUM(quantity) AS total_orders
FROM orders
GROUP BY product_id
HAVING SUM(quantity) > 100;