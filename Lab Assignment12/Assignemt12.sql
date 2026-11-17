 -- Assignment 12
-- Name = Mohammad Ayan
 -- Roll_No = 2410303268
 
 USE dbms_lab;

CREATE TABLE club_a (
    student_name VARCHAR(30)
);

INSERT INTO club_a (student_name)
VALUES ('Asha'), ('Rohan'), ('Neha');


CREATE TABLE club_b (
    student_name VARCHAR(30)
);

INSERT INTO club_b (student_name)
VALUES ('Neha'), ('Pooja'), ('Meera');

-- task1
SELECT student_name
FROM club_a
WHERE student_name IN (
    SELECT student_name
    FROM club_b
);

-- Task2
SELECT COUNT(*) AS members
FROM club_b;

-- Task3
SELECT student_name
FROM club_a
ORDER BY student_name;