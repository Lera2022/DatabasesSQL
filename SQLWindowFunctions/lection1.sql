CREATE TABLE Orders(
Date DATE NOT NULL,
Medium VARCHAR(10) NOT NULL,
Conversions INT NOT NULL
);

INSERT INTO Orders (Date, Medium, Conversions)
VALUE
('10.05.2020', 'cpa', 1),
('10.05.2020', 'cpc', 2),
('10.05.2020', 'organic', 1),
('11.05.2020', 'cpa', 1),
('11.05.2020', 'cpc', 3),
('11.05.2020', 'organic', 2),
('11.05.2020', 'direct', 1),
('12.05.2020', 'cpd', 1),
('12.05.2020', 'organic', 2);

SELECT
	Date,
    Medium,
    Conversions,
    SUM(Conversions) OVER() AS 'Sum'
FROM Orders;

SELECT
	Date,
    Medium,
    Conversions,
    SUM(Conversions) OVER(PARTITION BY Date) AS 'Sum'
FROM Orders;

SELECT
	Date,
    Medium,
    Conversions,
    SUM(Conversions) OVER(PARTITION BY Date ORDER BY Medium) AS 'Sum'
FROM Orders;

SELECT
	Date,
    Medium,
    Conversions,
    SUM(Conversions) OVER(PARTITION BY Date ORDER BY Conversions ROWS BETWEEN CURRENT ROW AND 1 FOLLOWING) AS 'Sum'
FROM Orders;