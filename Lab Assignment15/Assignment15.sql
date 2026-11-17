
 -- Assignment 15
-- Name = Mohammad Ayan
 -- Roll_No = 2410303268
 
 
USE dbms_lab;

CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    city VARCHAR(20)
);

INSERT INTO customer (customer_id, name, city)
VALUES
(1, 'Kiran', 'Kochi'),
(2, 'Deepak', 'Delhi'),
(3, 'Lata', 'Mumbai'),
(4, 'Asha', 'Delhi');
-- Task1
CREATE INDEX idx_city
ON customer(city);

-- Task2
SELECT name
FROM customer
WHERE city = 'Delhi'
ORDER BY name;

-- Task3
INSERT INTO customer (customer_id, name, city)
VALUES (5, 'Arjun', 'Pune');
SELECT * FROM customer;