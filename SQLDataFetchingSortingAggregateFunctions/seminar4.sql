CREATE TABLE salary
(
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(10) NOT NULL,
age INT NOT NULL,
salary INT NOT NULL
);

INSERT INTO salary (name, age, salary)
VALUE
('Дима', 23, 100),
('Петя', 23, 200),
('Вася', 23, 300),
('Коля', 23, 1000),
('Иван', 24, 2000);

SELECT age, SUM(salary) AS sum_salary FROM salary
GROUP BY age
HAVING SUM(salary)>=1000;

SELECT age, COUNT(*) AS count FROM salary
GROUP BY age
HAVING count <= 2;

SELECT age, COUNT(*) AS count FROM salary
GROUP BY age
HAVING count BETWEEN 0 AND 2;

SELECT age, COUNT(*) AS count FROM salary
GROUP BY age
HAVING count IN (0, 1);