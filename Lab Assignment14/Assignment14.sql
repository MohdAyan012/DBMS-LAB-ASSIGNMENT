 -- Assignment 14
-- Name = Mohammad Ayan
 -- Roll_No = 2410303268
 
 USE dbms_lab;

CREATE TABLE score (
    name VARCHAR(30),
    subject VARCHAR(20),
    marks INT
);

INSERT INTO score (name, subject, marks)
VALUES
('Asha', 'Maths', 78),
('Rohan', 'Maths', 64),
('Neha', 'Maths', 88),
('Kiran', 'Maths', 52);

-- Task1
CREATE VIEW high_scores AS
SELECT name, marks
FROM score
WHERE marks >= 70;

-- Task2
SELECT *
FROM high_scores;

-- Task3
SELECT name
FROM high_scores
ORDER BY name;

