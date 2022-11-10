USE employees;

SELECT COUNT(emp_no) FROM salaries;

SELECT employees.last_name AS name, salaries.salary FROM employees JOIN salaries ON salaries.emp_no = employees.emp_no;

USE codeup_test_db;

CREATE TABLE persons (
                         person_id INT NOT NULL AUTO_INCREMENT,
                         first_name VARCHAR(25) NOT NULL,
                         album_id INT NOT NULL,
                         PRIMARY KEY (person_id)
);

INSERT INTO persons (first_name, album_id) VALUES ('Olivia', 29), ('Santiago', 27), ('Tareq', 15), ('Anaya', 28);

SELECT p.person_id, a.name FROM persons p JOIN albums a ON p.album_id = a.id;


CREATE TABLE departments (
                             dept_no INT UNSIGNED NOT NULL AUTO_INCREMENT,
                             dept_name VARCHAR(100) NOT NULL,
                             PRIMARY KEY (dept_no)
);
INSERT INTO departments (dept_name) VALUES
                                        ('human resources'),
                                        ('finance'),
                                        ('sales';

CREATE TABLE employees (
                           emp_no INT UNSIGNED NOT NULL AUTO_INCREMENT,
                           first_name VARCHAR(255),
                           last_name VARCHAR(255),
                           email VARCHAR(100) NOT NULL,
                           PRIMARY KEY (emp_no)
);
INSERT INTO employees (emp_no, first_name, last_name, email) VALUES
                                                                 (10001, 'Jason', 'Merrell', 'jason.merrell@codeup.com'),
                                                                 (10002,'Kelly', 'Clarkson', 'kelly@clarkson.com'),
                                                                 (10003,'Billy', 'Bob', 'billy@bob.com'),
                                                                 (10004,'Ariana', 'Grande', 'ariana@grande.com');

CREATE TABLE dept_emp (
                          dept_no INT UNSIGNED NOT NULL,
                          emp_no INT UNSIGNED NOT NULL,
                          from_date DATE NOT NULL,
                          to_date DATE NOT NULL,
                          FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
                          FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date) VALUES
                                                               (1, 10001, '2008-01-01', '2011-12-31'),
                                                               (1, 10001, '2012-01-01', '9999-01-01');
