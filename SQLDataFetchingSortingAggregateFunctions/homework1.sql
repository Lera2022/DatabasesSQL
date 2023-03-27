CREATE TABLE SALESPEOPLE
(
snum INT NOT NULL,
sname VARCHAR(10) NOT NULL,
city VARCHAR(10) NOT NULL,
comm VARCHAR(3) NOT NULL
);
INSERT INTO SALESPEOPLE (snum, sname, city, comm)
VALUES
(1001, 'Peel', 'London', '.12'),
(1002, 'Serres', 'San Jose', '.13'),
(1004, 'Motika', 'London', '.11'),
(1007, 'Rifkin', 'Barcelona', '.15'),
(1003, 'Axelrod', 'New York', '.10');
SELECT city, sname, snum, comm FROM SALESPEOPLE;