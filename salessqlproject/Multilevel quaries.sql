-- Multi-level Queries
-- Find customers who bought more than 3 different products.
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(DISTINCT product_id) > 3;

-- Find products never ordered.
SELECT p.product_id, p.product_name
FROM products p
LEFT JOIN orders o ON p.product_id = o.product_id
WHERE o.product_id IS NULL;

-- 🔹 Real Business Logic
-- Calculate total revenue (price * quantity) per order.
SELECT o.order_id,
    SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY o.order_id;

-- Find monthly sales revenue.
SELECT 
    DATE_FORMAT(o.order_date, '%Y-%m') AS month,
    SUM(p.price * o.quantity) AS monthly_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- Find top category by revenue.
SELECT 
    p.category,
    SUM(p.price * o.quantity) AS total_revenue
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC
LIMIT 1;