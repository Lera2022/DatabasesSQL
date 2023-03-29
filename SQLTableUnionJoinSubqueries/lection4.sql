create table Products3
(
Id int auto_increment primary key,
ProductName varchar(30) not null,
Manufacturer varchar(20) not null,
ProductCount int default 0,
Price decimal not null
);

insert into Products3 (ProductName, Manufacturer, ProductCount, Price)
values
('iPhone X', 'Apple', 3, 71000),
('iPhone 8', 'Apple', 3, 56000),
('Galaxy S9', 'Samsung', 6, 56000),
('Galaxy S8', 'Samsung', 2, 46000),
('Honor 10', 'Huawei', 5, 26000);

SELECT * FROM Products3
WHERE Id IN (SELECT ProductId FROM Orders);

SELECT * FROM Products3
WHERE Id NOT IN (SELECT ProductId FROM Orders);

CREATE TABLE test
(
	Id INT,
    Name VARCHAR(45)
);

INSERT INTO test
VALUES
(1, 'Bob'),
(2, 'Tom'),
(3, 'Tim');

SELECT * FROM test;

CREATE TABLE copy SELECT * FROM test;

SELECT * FROM copy;

