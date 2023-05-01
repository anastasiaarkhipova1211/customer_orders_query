SELECT AVG(total_amount) AS average_order_amount
FROM orders_db.orders
WHERE customer_id IN (
  SELECT customer_id
  FROM customers_db.customers
  WHERE customer_city = 'Los Angeles'
);
