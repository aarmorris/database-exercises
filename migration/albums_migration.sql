USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
    id INT NOT NULL AUTO_INCREMENT,
    artist VARCHAR(40) NOT NULL,
    name VARCHAR(65) NOT NULL,
    release_date INT,
    sales FLOAT,
    genre VARCHAR(15),

     PRIMARY KEY(id)


);