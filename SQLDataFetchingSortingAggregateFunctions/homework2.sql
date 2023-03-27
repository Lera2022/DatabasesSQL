CREATE TABLE CUSTOMERS
(
cnum INT NOT NULL,
cname VARCHAR(10) NOT NULL,
city VARCHAR(10) NOT NULL,
rating INT NOT NULL,
snum INT NOT NULL
);
INSERT INTO CUSTOMERS (cnum, cname, city, rating, snum)
VALUES
(2001, 'Hoffman', 'London', 100, 1001),
(2002, 'Giovanni', 'Rome', 200, 1003),
(2003, 'Liu', 'SanJose', 200, 1002),
(2004, 'Grass', 'Berlin', 300, 1002),
(2006, 'Clemens', 'London', 100, 1001),
(2008, 'Cisneros', 'SanJose', 300, 1007),
(2007, 'Pereira', 'Rome', 100, 1004);
SELECT cname, rating FROM CUSTOMERS;
SELECT cname LIKE 'G%' FROM CUSTOMERS;
SELECT * FROM CUSTOMERS WHERE rating > 100 AND city != 'Rome';