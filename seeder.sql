USE join_test_db;

INSERT INTO users (name, email, role_id) VALUES ('harry', 'harry@example.com', 2),
('liam', 'liam@example.com', 2),
('louis', 'louis@example.com', 2),
('niall', 'niall@example.com', null);

# SELECT users.name as user_name, roles.name as role_name
# FROM users
# JOIN users ON users.role_id = roles.id;

# SELECT columns
# FROM table_users AS users
# JOIN table_roles AS roles ON users.id = roles.fk_id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;

SELECT roles COUNT (*)
FROM users WHERE users
GROUP BY role_id;