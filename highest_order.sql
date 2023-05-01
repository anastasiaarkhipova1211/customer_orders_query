SELECT customer_name
FROM customers
WHERE customer_id = (
SELECT customer_id
FROM orders
ORDER BY total_amount DESC
LIMIT 1
);