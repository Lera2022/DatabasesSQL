CREATE TABLE customers
(
    customerNumber INT NOT NULL,
    customerName VARCHAR(30) NOT NULL,
    state VARCHAR(10),
    country VARCHAR(10) NOT NULL
);

INSERT INTO customers (customerNumber, customerName, state, country) 
VALUES 
(103, 'Atelier graphique', NULL, 'France'),
(112, 'Signal Gift Stores', 'NV', 'USA'),
(114, 'Australian Collectors. Co.', 'Victoria', 'Australia'),
(119, 'La Roshelle Gifts', NULL, 'France'),
(121, 'Beaane Mini Imports', NULL, 'Norway'),
(124, 'Mini Gifts Distributors Ltd.', 'CA', 'USA'),
(125, 'Havel & Zbyszek Co', NULL, 'Poland'),
(128, 'Blauer See Auto. Co.', NULL, 'Germany');

SELECT 
	customerNumber, customerName, state, country
FROM
	customers;
    
SELECT 
	customerNumber,
    customerName,
    IF(state IS NULL, 'N/A', state) state,
    country
FROM
	customers;
    