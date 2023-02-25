USE codeup_test_db;


# Write SELECT statements for:
# Albums released after 1991
# Albums with the genre 'disco'
# Albums by 'Whitney Houston' (...or maybe an artist of your choice)

# Make sure to put appropriate captions before each SELECT.
# Convert the SELECT statements to DELETE.
# Use the MySQL command line client to make sure your records really were removed.

DELETE from albums where release_date > 1991;
DELETE from albums where genre = 'disco';
DELETE from albums where artist = 'Whitney Houston';