# Each department along with the name of the current manager for that department
USE employees;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM employees e JOIN dept_manager dm on e.emp_no = dm.emp_no JOIN departments d on dm.dept_no = d.dept_no WHERE dm.to_date LIKE '9%' ORDER BY d.dept_name;

# All departments currently manage by women added an AND to sort through gender

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM employees e JOIN dept_manager dm on e.emp_no = dm.emp_no JOIN departments d on dm.dept_no = d.dept_no WHERE dm.to_date LIKE '9%' AND e.gender = 'F' ORDER BY d.dept_name;

# Current titles of  employees currently working in the Customer Service department

SELECT title, COUNT(title) FROM titles t JOIN employees e on e.emp_no = t.emp_no JOIN dept_emp de on e.emp_no = de.emp_no WHERE de.dept_no LIKE '%9' AND de.to_date LIKE '9%' AND t.to_date LIKE '9%' GROUP BY title ORDER BY COUNT(title) DESC;

# Find the current salary of all current managers.

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary
FROM salaries s
    JOIN employees e on e.emp_no = s.emp_no
    JOIN dept_manager dm on e.emp_no = dm.emp_no
    JOIN departments d on dm.dept_no = d.dept_no WHERE dm.to_date LIKE '9%' AND s.to_date LIKE '9%' ORDER BY d.dept_name;