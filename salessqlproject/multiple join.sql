-- UPPER-INTERMEDIATE (31–40)
-- 🔹 Multiple JOINS
-- Show customer name, product name, and order date.
SELECT c.name, p.product_name, o.order_date
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;

-- Show all orders with customer city.
SELECT o.order_id, c.city
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- Show product category for each order.
SELECT o.order_id, p.category
FROM orders o
JOIN products p ON o.product_id = p.product_id;