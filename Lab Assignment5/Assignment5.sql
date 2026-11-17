USE dbms_lab;

-- 
-- TABLE CREATION
-- 

CREATE TABLE IF NOT EXISTS book (
    title VARCHAR(40),
    category VARCHAR(20),
    copies INT
);

-- 
-- INSERTING DATA (WITHOUT DUPLICATES)
-- 
INSERT INTO book (title, category, copies)
SELECT 'Database Systems', 'Computer', 3
WHERE NOT EXISTS (
    SELECT 1 FROM book WHERE title = 'Database Systems'
);

INSERT INTO book (title, category, copies)
SELECT 'Digital Electronics', 'Electronics', 2
WHERE NOT EXISTS (
    SELECT 1 FROM book WHERE title = 'Digital Electronics'
);

INSERT INTO book (title, category, copies)
SELECT 'Data Structures in C', 'Computer', 2
WHERE NOT EXISTS (
    SELECT 1 FROM book WHERE title = 'Data Structures in C'
);

INSERT INTO book (title, category, copies)
SELECT 'Short Stories', 'Literature', 1
WHERE NOT EXISTS (
    SELECT 1 FROM book WHERE title = 'Short Stories'
);


-- =====================================
-- TASK 1: Titles Starting with Data
-- =====================================

SELECT title
FROM book
WHERE title LIKE 'Data%';
-- 
-- TASK 2: Titles Ending with Letter C
-- 

SELECT title
FROM book
WHERE title LIKE '%C';
-- 
-- TASK 3: Titles Whose Second Letter is h
-- 

SELECT title
FROM book
WHERE title LIKE '_h%';

-- 
-- CHECK: DISPLAY ALL BOOKS
-- 

SELECT * FROM book;