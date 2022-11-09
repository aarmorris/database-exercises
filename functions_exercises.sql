USE employees;

SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, emp_no DESC;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;


SELECT last_name FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE '%q%' ORDER BY emp_no DESC;

SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Maya' OR first_name = 'Vidya');

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Maya' OR first_name = 'Vidya') AND gender = 'M';

SELECT * FROM employees WHERE (last_name LIKE 'E%' OR last_name LIKE '%E');

SELECT CONCAT(first_name,' ', last_name) AS concatResults FROM employees WHERE (last_name LIKE 'E%' AND last_name LIKE '%E');

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE last_name LIKE '%set%';

SELECT * FROM employees WHERE hire_date LIKE '%11-11';

SELECT * FROM employees WHERE (first_name LIKE 'q%' OR first_name LIKE 'b%') AND hire_date LIKE '1988%' ORDER BY birth_date;

SELECT * FROM employees WHERE birth_date LIKE '%12-25';

SELECT * FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%';

SELECT * FROM employees WHERE birth_date LIKE '%12-25' AND hire_date LIKE '199%';

SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) LIKE '199%' ORDER BY birth_date, hire_date DESC;

SELECT *, DATEDIFF(CURDATE(), hire_date) FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25 AND YEAR(hire_date) LIKE '199%' ORDER BY DATEDIFF(CURDATE(),hire_date) DESC;