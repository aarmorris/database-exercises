USE employees;
# Number ONE
SELECT DISTINCT title FROM titles;
# Number Two
SELECT last_name FROM employees WHERE (last_name LIKE 'E%' AND last_name LIKE '%E') GROUP BY last_name ORDER BY last_name;

# Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY last_name;

# Find the unique last names with a 'q' but not 'qu'. Your results should be:

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%'AND last_name NOT LIKE '%qu%';

# Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.

SELECT COUNT(last_name) AS 'Colomn Count', last_name AS 'Last Name' FROM employees WHERE last_name LIKE '%q%'AND last_name NOT LIKE '%qu%' GROUP BY last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names. Your results should be:

SELECT COUNT(*), gender FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') GROUP BY gender;

# Practice

SELECT COUNT(*), first_name FROM employees WHERE first_name IN ('Maya') GROUP BY first_name;

SELECT COUNT(*) AS Count ,first_name, last_name FROM employees WHERE first_name = 'Maya' GROUP BY first_name, last_name ORDER BY Count DESC;

