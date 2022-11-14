# Each department along with the name of the current manager for that department
USE employees;


SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager' FROM employees e JOIN dept_manager dm on e.emp_no = dm.emp_no JOIN departments d on dm.dept_no = d.dept_no WHERE dm.to_date LIKE '9%' ORDER BY d.dept_name;