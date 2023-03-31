CREATE TABLE orders
 (
    orderid INT AUTO_INCREMENT PRIMARY KEY,
    employeeid VARCHAR(3) NOT NULL,
    amount DECIMAL(5,2) NOT NULL,
    orderstatus VARCHAR(10)
 );
 INSERT INTO orders (employeeid, amount, orderstatus)
  VALUES
  ('e03', 15.00, 'OPEN'),
  ('e01', 25.50, 'OPEN'),
  ('e05', 100.70, 'CLOSED'),
  ('e02', 22.18, 'OPEN'),
  ('e04', 9.50, 'CANCELLED'),
  ('e04', 99.99, 'OPEN');
  SELECT orderid, orderstatus,
CASE
	WHEN orderstatus = 'CLOSED'
		THEN 'Order is closed'
	WHEN orderstatus = 'CANCELLED'
		THEN 'Order is cancelled'
	ELSE 'Order is in open state'
END AS order_summary
FROM orders;

DROP VIEW customer_archive;

CREATE VIEW view-name AS
SELECT column1, column2, column3, ...
FROM table_name1 INNER JOIN table_name2
ON table_name1.column = table_name2.column;

