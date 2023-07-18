USE coffee_store;

SELECT * FROM customers;
SELECT * FROM orders;

UPDATE orders
SET customer_id = 1
WHERE id = 1;

SELECT o.id, c.phone_number, c.last_name, o.order_time FROM orders o
RIGHT JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time
LIMIT 10;