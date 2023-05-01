SELECT customers.customer_name, COUNT(orders.order_id) AS total_orders
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id
WHERE customers.customer_id IN (
SELECT customer_id
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 1
)
GROUP BY customers.customer_name;