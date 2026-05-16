-- LIMIT
-- Show first 10 customers.
SELECT * FROM customers
LIMIT 10;

-- Show top 5 most expensive products.
SELECT * FROM products
ORDER BY price DESC
LIMIT 5;
