USE employees;
# Part One Of Exercise
SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT last_name FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

# Part Two Of Exercise
SELECT first_name FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Maya' OR first_name = 'Vidya');

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Maya' OR first_name = 'Vidya') AND gender = 'M';

SELECT * FROM employees WHERE (last_name LIKE 'E%' OR last_name LIKE '%E');

SELECT * FROM employees WHERE (last_name LIKE 'E%' AND last_name LIKE '%E');

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

SELECT * FROM employees WHERE last_name LIKE '%set%';

SELECT * FROM employees WHERE hire_date LIKE '%11-11';

SELECT * FROM employees WHERE (first_name LIKE 'q%' OR first_name LIKE 'b%') AND hire_date LIKE '1988%' ORDER BY birth_date;

SELECT * FROM employees WHERE birth_date LIKE '1965%' AND gender = 'F';




