USE dbms_lab;

CREATE TABLE if not exists product (
    product_name VARCHAR(30),
    category VARCHAR(20),
    price INT
);

INSERT INTO product (product_name, category, price)
VALUES
('Pen', 'Stationery', 15),
('Notebook', 'Stationery', 60),
('Calculator', 'Electronics', 850),
('Bag', 'Office', 500);

-- TASK 1: Display products sorted by price (High to Low)
SELECT product_name, price
FROM product
ORDER BY price DESC;


-- TASK 2: Display each category only once
SELECT DISTINCT category
FROM product
ORDER BY category;


-- TASK 3: Display the two most expensive products
SELECT product_name, price
FROM product
ORDER BY price DESC
LIMIT 2;