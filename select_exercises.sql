USE codeup_test_db;
# All albums from Pink Floyd
SELECT * FROM albums WHERE artist = 'Pink Floyd';

# Selecting year Sgt.Pepper's Lonely Hearts Club Band release date. LIKE instead of WHERE %name of album%
SELECT name, release_date FROM albums WHERE id = 28;

# Nevermind genre select.
SELECT name, genre FROM albums WHERE id = 37;

# Albums in 1990's ORDER BY "release_date" included in walk through.
SELECT name FROM albums WHERE release_date BETWEEN 1990 AND 2000;

# Albums with less than 20 million certified sales.
SELECT name, sales FROM albums WHERE sales < 20 ORDER BY sales;

# ALl Albums with a genre of "Rock" Why
SELECT name FROM albums WHERE genre = 'Rock';

