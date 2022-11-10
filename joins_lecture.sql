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


CREATE TABLE preferences (
        person_id INT NOT NULL,
        album_id INT NOT NULL
);

INSERT INTO preferences (person_id, album_id) VALUES (1, 12), (1, 5), (1, 22), (1, 29), (2, 1), (2, 31), (2, 30), (3, 11), (3, 26), (3, 25);

SELECT p.first_name, a.name AS name FROM persons p JOIN preferences pref ON p.person_id = pref.person_id JOIN albums a on pref.album_id = a.id;

CREATE TABLE departments (
                             id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                             name VARCHAR(100) NOT NULL,
                             PRIMARY KEY (id)
);
INSERT INTO departments (name) VALUES
                                   ('human resources'),
                                   ('finance'),
                                   ('sales');

CREATE TABLE employees (
                           id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                           first_name VARCHAR(255),
                           last_name VARCHAR(255),
                           email VARCHAR(100) NOT NULL,
                           PRIMARY KEY (id)
);
INSERT INTO employees (first_name, last_name, email) VALUES
                                                         ('Jason', 'Merrell', 'jason.merrell@codeup.com'),
                                                         ('Kelly', 'Clarkson', 'kelly@clarkson.com'),
                                                         ('Billy', 'Bob', 'billy@bob.com'),
                                                         ('Ariana', 'Grande', 'ariana@grande.com');

CREATE TABLE dept_emp (
                          dept_no INT UNSIGNED NOT NULL,
                          emp_no INT UNSIGNED NOT NULL,
                          from_date DATE NOT NULL,
                          to_date DATE NOT NULL,
                          FOREIGN KEY (emp_no) REFERENCES employees (id),
                          FOREIGN KEY (dept_no) REFERENCES departments (id)
);
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date) VALUES
    (1, 1, '2012-01-01', '9999-01-01');
;

