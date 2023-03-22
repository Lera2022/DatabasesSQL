USE homework1;

SELECT * FROM phones
WHERE Manufacturer = 'Samsung' AND Price > 50000;

SELECT * FROM phones
WHERE Manufacturer = 'Samsung' OR Price > 50000;

SELECT * FROM phones
WHERE NOT Manufacturer = 'Samsung';

SELECT ProductName, ProductCount,
CASE
	WHEN ProductCount = 1
		THEN 'Товар заканчивается'
	WHEN ProductCount = 2
		THEN 'Мало товара'
	WHEN ProductCount = 3
		THEN 'Есть в наличии'
	ELSE 'Много товара'
END AS Category
FROM phones;

SELECT ProductName, Manufacturer,
	IF(ProductCount>3, 'Много товара', 'Мало товара')
FROM phones;

CREATE TABLE Products
 (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(30) NOT NULL,
    Manufacturer VARCHAR(20) NOT NULL,
    ProductCount INT DEFAULT 0,
    Price DECIMAL
 );
 INSERT INTO Products (ProductName, Manufacturer, ProductCount, Price)
  VALUES
  ('iPhone X', 'Apple', 3, 76000),
  ('iPhone 8', 'Apple', 2, 51000),
  ('Galaxy S9', 'Samsung', 2, 56000),
  ('Galaxy S8', 'Samsung', 1, 41000),
  ('P20 Pro', 'Huawei', 5, 36000);