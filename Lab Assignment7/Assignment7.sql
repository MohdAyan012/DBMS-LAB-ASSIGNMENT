USE dbms_lab;

CREATE TABLE sales (
    salesperson VARCHAR(30),
    region VARCHAR(20),
    amount INT
);

INSERT INTO sales (salesperson, region, amount)
VALUES
('Deepak', 'North', 12000),
('Pooja', 'South', 8500),
('Deepak', 'South', 9500),
('Lata', 'North', 11000);

USE dbms_lab;

-- TASK 1: Count total sales records
SELECT COUNT(*) AS num_sales
FROM sales;


-- TASK 2: Calculate total sales amount
SELECT SUM(amount) AS total
FROM sales;


-- TASK 3: Find the highest sales amount
SELECT MAX(amount) AS highest
FROM sales;