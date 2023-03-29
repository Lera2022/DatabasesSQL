Create table tableA(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name CHAR(100) NOT NULL
);

INSERT INTO tableA(name)
values ('Яблоко'),('Ананас'),('Банан'),('Груша');

Create table tableB(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
name CHAR(100) NOT NULL
);

INSERT INTO tableB(name)
values ('Тыква'),('Яблоко'),('Дыня'),('Банан');

Select * from tableA;

Select * from tableB;

SELECT * FROM tableA
INNER JOIN tableB
ON tableA.name = tableB.name;

SELECT * FROM tableA
FULL JOIN tableB
ON tableA.name = tableB.name;

SELECT * FROM tableA
LEFT JOIN tableB ON tableA.name = tableB.name
UNION
SELECT * FROM tableA
RIGHT JOIN tableB ON tableA.name = tableB.name;

SELECT * FROM tableA
RIGHT JOIN tableB 
ON tableA.name = tableB.name
WHERE tableA.name IS NULL;

SELECT * FROM tableA
CROSS JOIN tableB;
