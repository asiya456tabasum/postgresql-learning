-- Count orders per customer
SELECT customer_name,
       COUNT(orders.order_id) AS order_count
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customer_name;

-- Total quantity purchased by each customer
SELECT customer_name,
       SUM(order_items.quantity) AS total_quantity
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
LEFT JOIN order_items
    ON orders.order_id = order_items.order_id
GROUP BY customer_name;

-- Average product price
SELECT AVG(products.price) AS average_price
FROM products;
