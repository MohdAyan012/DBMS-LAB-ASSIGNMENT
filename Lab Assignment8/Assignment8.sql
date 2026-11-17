USE dbms_lab;

CREATE TABLE shop_sale (
    salesperson VARCHAR(30),
    region VARCHAR(20),
    amount INT
);

INSERT INTO shop_sale (salesperson, region, amount)
VALUES
('Deepak', 'North', 12000),
('Pooja', 'South', 8500),
('Deepak', 'South', 9500),
('Lata', 'North', 11000);

-- TASK 1: Count sales in each region
SELECT region, COUNT(*) AS total_sales
FROM shop_sale
GROUP BY region
ORDER BY region;


-- TASK 2: Calculate total sales in each region
SELECT region, SUM(amount) AS total_amount
FROM shop_sale
GROUP BY region
ORDER BY region;


-- TASK 3: Show regions where total sales are greater than 20000
SELECT region, SUM(amount) AS total_amount
FROM shop_sale
GROUP BY region
HAVING SUM(amount) > 20000;