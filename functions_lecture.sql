USE employees;

SELECT CONCAT(first_name,' ', last_name)AS Employees FROM employees WHERE first_name = 'Maya' ORDER BY last_name;

SELECT DISTINCT DAYOFMONTH(hire_date) FROM employees WHERE first_name = 'Maya' ORDER BY DAYOFMONTH(hire_date);

SELECT DATEDIFF(NOW(), hire_date) FROM employees WHERE emp_no = 10006;