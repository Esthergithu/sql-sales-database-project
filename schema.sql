CREATE TABLE customers
(
    customer_id integer PRIMARY KEY,
    first_name VARCHAR(50),
    second_name VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR (100)
);
CREATE TABLE orders 
(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE
);

CREATE TABLE products 
(
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE orderitems 
(
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT
);
