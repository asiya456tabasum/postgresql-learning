-- INNER JOIN
SELECT customer_name, order_id
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id;


-- LEFT JOIN
SELECT customer_name, order_id
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id;


-- Find customers with no orders
SELECT customer_name
FROM customers
LEFT JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE order_id IS NULL;


-- Find products that have never been ordered
SELECT product_name
FROM products
LEFT JOIN order_items
    ON products.product_id = order_items.product_id
WHERE order_id IS NULL;


-- 3-table JOIN
SELECT customer_name, orders.order_id, quantity
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
JOIN order_items
    ON orders.order_id = order_items.order_id;


-- 4-table JOIN + filtering
SELECT product_name, price, customer_name
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
JOIN order_items
    ON orders.order_id = order_items.order_id
JOIN products
    ON order_items.product_id = products.product_id
WHERE price > 100;
