CREATE TABLE Products
 (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(30) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price DECIMAL NOT NULL
 );
 INSERT INTO Products (ProductName, Manufacturer, ProductCount, Price)
  VALUES
  ('iPhone X', 'Apple', 3, 76000),
  ('iPhone 8', 'Apple', 2, 51000),
  ('Galaxy S9', 'Samsung', 2, 56000),
  ('Galaxy S8', 'Samsung', 1, 41000),
  ('P20 Pro', 'Huawei', 5, 36000);
  
SELECT * FROM Products;

DELETE FROM Products
WHERE Id=9;

SELECT * FROM Products
WHERE NOT Manufacturer IN ('Apple', 'Samsung');