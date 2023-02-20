USE codeup_test_db;

/*Write queries to find the following information. Before each item, output a caption explaining the results:

The name of all albums by Pink Floyd.
The year Sgt. Pepper's Lonely Hearts Club Band was released
The genre for Nevermind
Which albums were released in the 1990s
Which albums had less than 20 million certified sales
All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"? */

SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT name FROM albums where release_date BETWEEN  1989 AND 2000;
SELECT name FROM albums where sales < 20;
SELECT name FROM albums WHERE genre = 'Rock';