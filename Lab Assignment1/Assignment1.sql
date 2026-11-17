
-- -Name = Mohammad Ayan
- -- -Roll_No = 2410303268


CREATE DATABASE dbms_lab;

USE dbms_lab;

CREATE TABLE student (
    roll_no INT,
    name VARCHAR(30),
    marks INT
);

INSERT INTO student (roll_no, name, marks)
VALUES
(101, 'Asha', 78),
(102, 'Rohan', 64),
(103, 'Neha', 88);

SELECT * FROM student;