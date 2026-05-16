-- ADVANCED (41–50)
-- 🔹 Complex Aggregation
-- Find top 5 customers by total spending.
SELECT c.customer_id,c.name,
SUM(o.quantity * p.price) as Total_amount
FROM orders o 
JOIN customers c 
ON o.customer_id=c.customer_id
JOIN products p 
ON o.product_id=p.product_id
GROUP BY c.customer_id,c.name
ORDER BY Total_amount
LIMIT 5;

-- MOST SOLD PRODUCT
SELECT 
    p.product_id,
    p.product_name,
    SUM(o.quantity) AS total_sold
FROM products p
JOIN orders o 
    ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sold DESC
LIMIT 1;

-- Least sold prduct
SELECT 
    p.product_id,
    p.product_name,
    COALESCE(SUM(o.quantity), 0) AS total_sold
FROM products p
LEFT JOIN orders o 
    ON p.product_id = o.product_id
GROUP BY p.product_id, p.product_name
ORDER BY total_sold ASC
LIMIT 1;



