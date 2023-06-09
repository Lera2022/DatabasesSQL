CREATE TABLE employees
( 
id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(10) NOT NULL,
surname VARCHAR(10) NOT NULL,
specialty VARCHAR(10) NOT NULL,
seniority INT default 0,
salary INT NOT NULL,
age INT NOT NULL
);
INSERT INTO employees(name, surname, specialty, seniority, salary, age)
VALUES
('Вася', 'Васькин', 'начальник', 40, 100000, 60),
('Петя', 'Петькин', 'начальник', 8, 70000, 30),
('Катя', 'Каткина', 'инженер', 2, 70000, 25),
('Саша', 'Сашкин', 'инженер', 12, 50000, 35),
('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
('Петр', 'Петров', 'рабочий', 20, 25000, 40),
('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
('Юра', 'Юркин', 'рабочий', 5, 15000, 25),
('Максим', 'Воронин', 'рабочий', 2, 11000, 22),
('Юра', 'Галкин', 'рабочий', 3, 12000, 24),
('Люся', 'Люськина', 'уборщик', 10, 10000, 49);
SELECT * FROM employees;
SELECT *
FROM employees
ORDER BY age;
SELECT *
FROM employees
ORDER BY name;
SELECT name, surname, age
FROM employees
ORDER BY name DESC;
SELECT *
FROM employees
ORDER BY name DESC, age DESC;
SELECT DISTINCT name
FROM employees;
SELECT *
FROM employees
LIMIT 2;
SELECT *
FROM employees
LIMIT 4, 3;
SELECT *
FROM employees
ORDER BY id DESC
LIMIT 2, 3;
