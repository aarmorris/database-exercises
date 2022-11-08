USE employees;

# WHERE Clauses

SELECT * FROM employees WHERE hire_date = '1985-01-01';

SELECT first_name FROM employees WHERE first_name LIKE '%Tom%';

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no BETWEEN 10026 AND 10082;

SELECT emp_no, first_name, last_name FROM employees WHERE last_name IN ('Herber', 'Dredge','Lipner', 'Baek');

SELECT emp_no, first_name, last_name FROM employees WHERE emp_no < 10026;


# Do multiple lines once syntax gets too long
SELECT emp_no, first_name, last_name FROM employees
            WHERE emp_no < 20000 AND last_name IN ('Herber', 'Baek')
            OR first_name = 'Shridhar';

SELECT first_name, last_name, gender FROM employees WHERE (last_name = 'Bolotov' OR last_name = 'Baek') AND gender = 'M';

SELECT * FROM salaries WHERE salary NOT BETWEEN 50000 AND 100000;

SELECT birth_date FROM employees
                  WHERE birth_date NOT LIKE '195%'
                    AND hire_date NOT LIKE '199%;';

SELECT * FROM employees WHERE birth_date LIKE '%-01';

# ORDER BY Clauses

SELECT * FROM employees WHERE birth_date LIKE '1954-01-%' ORDER BY birth_date;

SELECT * FROM employees WHERE birth_date LIKE '1954-01-%' ORDER BY birth_date DESC, last_name DESC;

SELECT * FROM employees WHERE (first_name LIKE 'q%' OR first_name LIKE 'b%') AND hire_date LIKE '1988%' ORDER BY birth_date;

# LIMIT and OFFSET

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER
    BY birth_date, last_name LIMIT 50;

SELECT * FROM employees WHERE birth_date LIKE '1954-01%' ORDER BY birth_date, last_name LIMIT 50 OFFSET 50;

# Line below uses a underscore wildcard

SELECT DISTINCT * FROM employees WHERE last_name LIKE '_e%' ORDER BY last_name;

SELECT salary FROM salaries WHERE salary LIKE '_9%'