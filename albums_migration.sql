USE codeup_test_db;
# go over these again for understanding
CREATE TABLE albums (
                id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                artist VARCHAR(50),
                name VARCHAR(100),
                release_date int,
                sales float,
                genre VARCHAR(50),
                PRIMARY KEY (id)
);