 -- Simple JOIN
-- Show customer names with their orders.
SELECT c.name, o.order_id, o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id;

-- Show product names with order quantities. 
SELECT p.product_name, o.quantity
FROM products p
JOIN orders o ON p.product_id = o.product_id;