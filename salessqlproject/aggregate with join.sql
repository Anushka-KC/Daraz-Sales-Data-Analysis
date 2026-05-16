-- Aggregation with JOIN
-- Total amount spent by each customer
SELECT c.customer_id,c.name,
SUM(o.quantity * p.price) as "Total Amount"
FROM orders o 
JOIN customers c
ON o.customer_id=c.customer_id
JOIN products p
ON o.product_id=p.product_id
GROUP BY c.customer_id, c.name;

-- Total quantity sold per category.
SELECT p.category,COUNT(o.quantity) AS "Total Quantity"
From orders o 
JOIN products p 
ON o.product_id=p.product_id 
GROUP BY p.category;


