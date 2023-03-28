CREATE TABLE SelectIntoDemo
(
	Id INT,
    FirstName VARCHAR(200)
);

INSERT INTO SelectIntoDemo VALUES(1,'Bob'),(2,'Carol'),(3,'David');

SELECT * FROM SelectIntoDemo;

CREATE TABLE yourTempTable SELECT * FROM SelectIntoDemo;

SELECT * FROM yourTempTable;