-- Total revenue per city
	SELECT city, SUM(amount) AS total_revenue FROM orders GROUP BY city;

-- Top 3 highest orders
	SELECT * FROM orders ORDER BY amount DESC LIMIT 3;

-- Total revenue per customer
	SELECT customer_name, SUM(amount) AS total_revenue FROM orders GROUP BY customer_name;

-- Average order amount per city
	SELECT city, AVG(amount) AS avg_order FROM orders GROUP BY city;

-- Customers with more than 1 order
	SELECT customer_name, COUNT(*) AS orders_count FROM orders GROUP BY customer_name HAVING COUNT(*) > 1;
