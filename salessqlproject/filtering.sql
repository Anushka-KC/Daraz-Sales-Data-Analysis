-- Filtering (WHERE)
-- Find customers from "Kathmandu".
 SELECT * FROM customers
 WHERE city = 'Kathmandu';

-- Find products with price greater than 100.
SELECT * FROM products
WHERE price > 100;

-- Find orders with quantity greater than 2.
SELECT * FROM orders
WHERE quantity > 2;

-- Find customers who signed up after 2022.
SELECT * FROM customers
WHERE signup_date > '2022-12-31';

-- Find products with stock less than 50.
SELECT * FROM products
WHERE stock < 50;