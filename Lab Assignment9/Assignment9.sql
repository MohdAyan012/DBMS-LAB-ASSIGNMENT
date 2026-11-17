-- Assignment 9
-- Name = Mohammad Ayan
 -- Roll_No = 2410303268


USE dbms_lab;

CREATE TABLE exam_result (
    name VARCHAR(30),
    marks INT
);

INSERT INTO exam_result (name, marks)
VALUES
('Asha', 92),
('Rohan', 47),
('Neha', 68),
('Meera', 33);


-- TASK 1: Display name and marks using aliases
SELECT name AS student_name, marks AS score
FROM exam_result;


-- TASK 2: Display Pass or Fail using CASE
SELECT name, marks,
CASE
    WHEN marks >= 40 THEN 'Pass'
    ELSE 'Fail'
END AS result
FROM exam_result;


-- TASK 3: Add 5 bonus marks to every student
SELECT name, marks + 5 AS with_bonus
FROM exam_result;