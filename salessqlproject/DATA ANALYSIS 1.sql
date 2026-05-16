CREATE DATABASE SalesDB;
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    city VARCHAR(100),
    signup_date DATE
);
CREATE TABLE products(
     product_id INT PRIMARY KEY,
     product_name VARCHAR(100),
     category VARCHAR (100),
     price INT,
     stock INT
);
CREATE TABLE orders(
     order_id int,	
     customer_id int,
     product_id	int,
     quantity int,	
     order_date int
);

     


 

