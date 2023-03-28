CREATE TABLE Products
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
	ProductName VARCHAR(30) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price DECIMAL NOT NULL
);

CREATE TABLE Customers
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(30) NOT NULL
);

CREATE TABLE Orders
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    ProductId INT NOT NULL,
    CustomerId INT NOT NULL,
    CreatedAt DATE NOT NULL,
    ProductCount INT DEFAULT 1,
    Price DECIMAL NOT NULL,
    FOREIGN KEY (ProductId) REFERENCES Products(Id) ON DELETE CASCADE,
    FOREIGN KEY (CustomerId) REFERENCES Customers(Id) ON DELETE CASCADE
);

SELECT Orders.CreatedAt, Orders.ProductCount, Products.ProductName
FROM Orders
JOIN Products ON Products.Id = Orders.ProductId;

SELECT FirstName, CreatedAt, ProductCount, Price
FROM Customers JOIN Orders
ON Orders.CustomerId = Customers.Id;

SELECT FirstName, CreatedAt, ProductCount, Price
FROM Customers LEFT JOIN Orders
ON Orders.CustomerId = Customers.Id;

SELECT FirstName, CreatedAt, ProductCount, Price
FROM Customers RIGHT JOIN Orders
ON Orders.CustomerId = Customers.Id;

DROP TABLE Products;

