DROP TABLE Analysis;

CREATE TABLE Analysis
(an_id INT AUTO_INCREMENT PRIMARY KEY,
an_name VARCHAR(5) NOT NULL,
an_cost DECIMAL(5,2) NOT NULL,
an_price DECIMAL(5,2) NOT NULL,
an_group VARCHAR(5));

INSERT INTO Analysis (an_name, an_cost, an_price, an_group) 
VALUES 
('PCR', '28.35', '30.00', 'CR'),
('KCR', '68.35', '80.00', 'CR'),
('VGA', '28.35', '30.00', 'GA'),
('PGA', '28.09', '40.00', 'GA'),
('UPV', '78.35', '90.00', 'PV'),
('MPV', '28.35', '30.00', 'PV');

CREATE TABLE Groups1
(gr_id INT AUTO_INCREMENT PRIMARY KEY,
gr_name VARCHAR(5) NOT NULL,
gr_temp DECIMAL(5,1) NOT NULL);

INSERT INTO Groups1 (gr_name, gr_temp) 
VALUES 
('CR', 5.5),
('GA', 10.0),
('PV', 8.5);

CREATE TABLE Orders
(ord_id INT AUTO_INCREMENT PRIMARY KEY,
ord_datetime DATETIME NOT NULL,
ord_an DECIMAL(5,2) NOT NULL);

INSERT INTO Orders (ord_datetime, ord_an) 
VALUES 
('2020-02-05', 1),
('2020-02-05', 3),
('2020-02-25', 4);

SELECT an_name, an_price, ord_datetime
FROM Analysis
JOIN Orders
ON Analysis.an_id = Orders.ord_id
AND Orders.ord_datetime >= '2020-02-05'
AND Orders.ord_datetime <= '2020-02-12';