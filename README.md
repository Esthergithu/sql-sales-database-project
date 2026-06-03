Project Summary: Warehouse Sales Database

Project Overview
This project involved building a complete warehouse sales database from scratch. The goal was to design a functional relational database that could track customer purchases, product inventory, and order details — simulating a real-world sales system for a warehouse or retail operation.

What I Built
I created four core tables that form the foundation of the sales database:

Customers – Stores customer information (names, contact details, customer IDs)

Products – Contains product details (product names, prices, descriptions, stock levels)

Orders – Tracks each sales transaction (order dates, customer IDs, order totals)

OrderItems – Links orders to products, recording quantities and line-item totals (this is the junction table that handles the many-to-many relationship between orders and products)

Concepts I Practiced and Mastered
1. Database Creation & Setup
I started from absolute zero — creating the database itself, defining the structure, and setting up all four tables with appropriate data types for each column. This gave me hands-on experience with the entire lifecycle of database design.

2. Understanding Constraints
Filling in the tables with realistic data helped me truly understand how constraints work in practice. I worked with:

Primary keys – Uniquely identifying each row in every table

Foreign keys – Maintaining referential integrity between orders, customers, products, and order items

NOT NULL constraints – Ensuring critical fields always have values

Unique constraints – Preventing duplicate entries where necessary

Seeing constraint violations in action (and fixing them) solidified my understanding of why these rules are essential for data integrity.

3. Data Manipulation (Populating Tables)
I inserted sample sales data into all four tables, learning how to handle:

Proper insertion order (customers and products first, then orders, then order items)

Managing foreign key dependencies when adding records

Realistic data generation for testing queries

4. Filtering and Sorting
I wrote queries to extract specific information from the database, including:

Filtering with WHERE clauses to find customers from specific regions or orders above certain amounts

Sorting results with ORDER BY to view recent orders first or products by price

Combining conditions using AND and OR operators

5. Aggregate Functions
I used aggregate functions to derive meaningful business insights from the raw data:

COUNT() – How many orders each customer placed

SUM() – Total sales revenue or quantity of items sold

AVG() – Average order value

MAX() / MIN() – Highest and lowest product prices

GROUP BY – Grouping results by customer, product, or date ranges

HAVING – Filtering grouped results (e.g., customers with more than 5 orders)

6. Joins (The Most Valuable Practice)
I practiced combining data from multiple tables using different types of joins:

INNER JOIN – Matching orders with their customers, and orders with their items

LEFT JOIN – Finding customers who haven't placed any orders yet

JOINing multiple tables – The query I wrote that linked Customers → Orders → OrderItems → Products to see complete order details with customer names and product descriptions.

This expanded version should give you a solid, professional summary that demonstrates both what you built and what you learnemore beginner-friendly, or more resume-focused)?

