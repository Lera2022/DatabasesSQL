DROP TABLE Salespeople;
DROP VIEW Londonstaff;

CREATE TABLE Salespeople
(
	snum INT NOT NULL,
    sname VARCHAR(10) NOT NULL,
    city VARCHAR(10) NOT NULL,
    comm DECIMAL(5,4) NOT NULL
);

INSERT INTO Salespeople (snum, sname, city, comm)
VALUES
(1001, 'Peel', 'London', 0.1200),
(1002, 'Pit', 'Monako', 0.1300),
(1003, 'Feel', 'Lima', 0.1200),
(1004, 'Motika', 'London', 0.1100);

SELECT * FROM Salespeople;

CREATE VIEW Londonstaff
            AS SELECT *
            FROM Salespeople
            WHERE city = 'London';

SELECT *
FROM Londonstaff;