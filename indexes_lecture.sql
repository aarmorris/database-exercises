USE employees;

SELECT * FROM employees e;

SHOW INDEXES FROM employees;

SHOW INDEXES FROM salaries;

SELECT salary FROM salaries WHERE salary BETWEEN 50000 AND 70000;

ALTER TABLE salaries ADD INDEX salary_index (salary);

ALTER TABLE salaries DROP INDEX salary_index;

# ALTER TABLE tbl_name ADD UNIQUE (column_name....)

USE codeup_test_db;

SHOW TABLES;

SHOW INDEXES FROM albums;

DESCRIBE albums;

SELECT * FROM albums;

INSERT INTO albums (artist, name, release_date, sales, genre) VALUES ('Meat Loaf', 'Bat Out of Hell', 1977, 22, 'Hard rock')

ALTER TABLE albums ADD UNIQUE unique_artist_name (artist,name);

DELETE FROM albums WHERE album_id = 78;