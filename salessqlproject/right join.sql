-- RIGHT JOIN Practice
-- Show all orders with product details.
SELECT o.order_id, p.product_name
FROM products p
RIGHT JOIN orders o ON p.product_id = o.product_id;


-- Find orders where product details are missing (simulate NULL case).
SELECT o.order_id
FROM products p
RIGHT JOIN orders o ON p.product_id = o.product_id
WHERE p.product_id IS NULL;