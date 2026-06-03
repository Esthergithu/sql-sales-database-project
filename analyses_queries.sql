-- List all customers
SELECT * 
FROM customers;

-- All products costing more that 1000
SELECT product_name, price 
FROM products
WHERE price > 1000;

-- Count the number of customers
SELECT COUNT(*) 
FROM customers;

-- Find the most expensive product
SELECT product_name, price
FROM product
ORDER BY price DESC
LIMIT 1;

-- Find the total sales per product
SELECT
    p.product_name,
    SUM(oi.quantity * p.price) AS total_sales
FROM orderitems oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sales DESC;

-- Total sales per customer
SELECT c.first_name, 
c.second_name, 
SUM(oi.quantity * p.price) AS total_spent
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id
INNER JOIN orderitems AS oi
ON o.order_id = oi.order_id
INNER JOIN products AS p
ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.second_name
ORDER BY total_spent DESC;

-- Top 5 customers by spending
SELECT c.first_name, 
c.second_name, 
SUM(oi.quantity * p.price) AS total_spent
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id
INNER JOIN orderitems AS oi
ON o.order_id = oi.order_id
INNER JOIN products AS p
ON oi.product_id = p.product_id
GROUP BY c.customer_id, c.first_name, c.second_name
ORDER BY total_spent DESC
LIMIT 5;

-- Revenue by month
SELECT 
    DATE_TRUNC('month', o.order_date) AS month,
    SUM(oi.quantity * p.price) AS revenue
FROM orderitems AS oi
INNER JOIN products AS p
ON oi.product_id = p.product_id
INNER JOIN orders AS o
ON oi.order_id = o.order_id
GROUP BY month
ORDER BY month;

-- Best selling product
SELECT product_name, quantity
FROM products p
INNER JOIN orderitems oi
ON p.product_id = oi.product_id
ORDER BY quantity DESC
LIMIT 1;

-- Average order value
SELECT
    AVG(order_total) AS average_order_value
FROM (
    SELECT
        o.order_id,
        SUM(oi.quantity * p.price) AS order_total
    FROM orders o
    JOIN orderitems oi
        ON o.order_id = oi.order_id
    JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY o.order_id
) AS order_values;
