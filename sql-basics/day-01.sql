-- Day 1: SQL Basics

-- SELECT
SELECT * FROM products;

-- SELECT specific columns
SELECT product_name, price
FROM products;

-- WHERE
SELECT product_name, product_id
FROM products
WHERE price > 100;

-- AND
SELECT *
FROM products
WHERE price > 50
  AND price < 500;

-- INSERT
INSERT INTO products(product_id, product_name, price)
VALUES (6, 'webcam', 75);

INSERT INTO products(product_id, product_name, price)
VALUES (7, 'tablet', 400);

-- UPDATE
UPDATE products
SET price = 450
WHERE product_id = 7;

-- DELETE
DELETE FROM products
WHERE product_id = 2;
