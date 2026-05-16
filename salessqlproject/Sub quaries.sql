-- Subqueries
-- Subqueries
-- Find customers who ordered more than average order quantity.
-- Find products with price higher than average price.


SELECT c.customer_id,c.name
From customers c
WHERE customer_id IN (SELECT customer_id FROM orders o
 WHERE o.quantity > (SELECT AVG(o.quantity) FROM orders o)
 );
 
-- Find products with price higher than average price. 
SELECT * FROM products
WHERE price > (SELECT AVG(price) FROM products);
 
