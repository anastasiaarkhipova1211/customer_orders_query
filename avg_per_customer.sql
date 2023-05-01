SELECT AVG(total_amount) AS average_order_amount
FROM orders
WHERE customer_id IN (
SELECT customer_id
FROM customers
WHERE customer_city = 'Los Angeles'
);