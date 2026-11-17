 -- Assignment 13
-- Name = Mohammad Ayan
 -- Roll_No = 2410303268
 
 
 -- Task1
 SELECT student_name
FROM club_a

UNION

SELECT student_name
FROM club_b

ORDER BY student_name;

-- Task2
SELECT student_name
FROM club_a

INTERSECT

SELECT student_name
FROM club_b

ORDER BY student_name;

-- Task3
SELECT student_name
FROM club_a

UNION ALL

SELECT student_name
FROM club_b

ORDER BY student_name;

