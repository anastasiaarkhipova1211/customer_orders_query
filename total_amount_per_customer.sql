WITH merged_table (SELECT *
FROM orders_db.orders AS orders
JOIN customers_db.customers AS customers
ON customers.customer_id = orders.customer_id),

total_order AS (SELECT customer_name, customer_id,
SUM(total_amount) AS total_orders
FROM merged_table
GROUP BY customer_id)


SELECT * FROM total_order
LIMIT 10