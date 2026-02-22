## Project Goal:

This project demonstrates basic SQL skills.
It focuses on querying and aggregating sales/orders data to extract business insights.

## Table Description: orders:

ColumnName	        Data Type	    Description
order_id	        INT	            Unique ID for each order
customer_name	    VARCHAR(50)	    Name of the customer
city	            VARCHAR(30)	    City where customer is located
amount	            INT	            Order amount in currency units

## SQL Queries & Purpose:

### Total revenue per city:

SELECT city, SUM(amount) AS total_revenue
FROM orders
GROUP BY city;

Shows total revenue generated in each city.

# 3 highest orders:

SELECT * FROM orders
ORDER BY amount DESC
LIMIT 3;

# Identifies the three largest orders by amount.

# Total revenue per customer:

SELECT customer_name, SUM(amount) AS total_revenue
FROM orders
GROUP BY customer_name;

# Calculates total spending per customer.

# Average order amount per city:

SELECT city, AVG(amount) AS avg_order
FROM orders
GROUP BY city;

# Helps understand average order value for each city.

# Customers with more than 1 order:

SELECT customer_name, COUNT(*) AS orders_count
FROM orders
GROUP BY customer_name
HAVING COUNT(*) > 1;

# Finds repeat customers to analyze loyalty.



## How to Use:

Create the orders table in MySQL.
Insert sample data provided.
Run queries to see the results.



## Skills Demonstrated:

SQL SELECT, WHERE
Aggregations: COUNT, SUM, AVG, MIN, MAX
GROUP BY & HAVING
ORDER BY & LIMIT
DISTINCT, IN, BETWEEN, LIKE
