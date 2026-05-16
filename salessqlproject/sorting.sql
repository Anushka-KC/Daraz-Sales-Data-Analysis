-- Sorting
-- Sort customers by name ascending.
SELECT * FROM customers
ORDER BY name ASC;

-- Sort products by price descending
SELECT * 
FROM products
ORDER BY price DESC;

-- Sort orders by order_date (latest first).
SELECT * 
FROM orders
ORDER BY order_date DESC;