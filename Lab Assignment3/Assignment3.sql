USE dbms_lab;

-- =====================================
-- TASK 1: Display Name and Marks
-- =====================================

SELECT name, marks
FROM student;


-- =====================================
-- TASK 2: Display Students Scoring More Than 60
-- =====================================

SELECT *
FROM student
WHERE marks > 60;


-- =====================================
-- TASK 3: Display Name of Student with Roll Number 103
-- =====================================

SELECT name
FROM student
WHERE roll_no = 103;