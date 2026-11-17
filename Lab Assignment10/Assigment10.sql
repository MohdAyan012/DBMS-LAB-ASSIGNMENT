-- Assignment 10
-- Name = Mohammad Ayan
 -- Roll_No = 2410303268
USE dbms_lab;

CREATE TABLE department (
    dept_id INT,
    dept_name VARCHAR(20)
);

INSERT INTO department (dept_id, dept_name)
VALUES
(10, 'Accounts'),
(20, 'Sales'),
(40, 'Research');


CREATE TABLE employee (
    emp_name VARCHAR(30),
    dept_id INT,
    salary INT
);

INSERT INTO employee (emp_name, dept_id, salary)
VALUES
('Anita', 10, 90000),
('Lata', 20, 55000),
('Deepak', 10, 60000),
('Pooja', 20, 42000);
USE dbms_lab;

-- TASK 1: Display employee name and department name
SELECT employee.emp_name, department.dept_name
FROM employee
INNER JOIN department
ON employee.dept_id = department.dept_id
ORDER BY employee.emp_name;


-- TASK 2: Display employees working in Sales department
SELECT employee.emp_name
FROM employee
INNER JOIN department
ON employee.dept_id = department.dept_id
WHERE department.dept_name = 'Sales'
ORDER BY employee.emp_name;


-- TASK 3: Display employee name, department name and salary
SELECT employee.emp_name, department.dept_name, employee.salary
FROM employee
INNER JOIN department
ON employee.dept_id = department.dept_id
ORDER BY employee.salary DESC;

