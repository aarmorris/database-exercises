USE employees;

# Employees with the same hire date as employee 101010 using subquery. (69 Rows)

SELECT first_name, last_name, birth_date
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees WHERE emp_no = 101010
);

# Titles held by all employees with first name Aamod.

SELECT * FROM titles;
SELECT * FROM employees WHERE  first_name = 'Aamod';

SELECT title FROM titles
    WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod' );

SELECT DISTINCT title FROM titles
WHERE emp_no IN (SELECT emp_no FROM employees WHERE first_name = 'Aamod' );

SELECT * FROM dept_manager;
    SELECT first_name, last_name FROM employees WHERE gender = 'F' AND emp_no IN (SELECT emp_no FROM dept_manager WHERE to_date LIKE '9999%');



