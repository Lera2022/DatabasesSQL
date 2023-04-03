CREATE DATABASE mydb;
USE mydb;

CREATE TABLE users (
username VARCHAR(50) PRIMARY KEY,
password VARCHAR(50) NOT NULL,
status VARCHAR(10) NOT NULL);

CREATE TABLE users_profile (
username VARCHAR(50) PRIMARY KEY,
name VARCHAR(50) NOT NULL,
address VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
FOREIGN KEY (username) REFERENCES users(username) ON DELETE CASCADE);

INSERT INTO users values
('admin' , '7856', 'Active'),
('staff' , '90802', 'Active'),
('manager' , '35462', 'Inactive');

INSERT INTO users_profile values
('admin', 'Administrator' , 'Dhanmondi', 'admin@test.com' ) ,
('staff', 'Jakir Nayek' , 'Mirpur', 'zakir@test.com' ),
('manager', 'Mehr Afroz' , 'Eskaton', 'mehr@test.com' );

WITH cte_users_profile AS
(
	SELECT * FROM users_profile
    WHERE username = 'staff'
)

SELECT * FROM cte_users_profile;

WITH cte_user_active AS
(
SELECT count(1) AS total
FROM users
WHERE status = 'Active'
)

SELECT total FROM cte_user_active;

SELECT * FROM users;

WITH RECURSIVE cte AS
(
	SELECT 1 AS n, 1 AS res
    UNION ALL
    SELECT n + 1, pow(n + 1, 2) as res FROM cte
    WHERE n < 10
)

SELECT res FROM cte;