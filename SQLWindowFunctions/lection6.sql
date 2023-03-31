CREATE TABLE Test
(
	Id INT,
    Count INT
);

DROP TABLE Test;

ALTER TABLE Test ADD COLUMN TestString VARCHAR(40);		#ALTER TABLE name_table ADD COLUMN column_name;

ALTER TABLE Test DROP COLUMN TestString; 

SELECT * FROM Test;

CREATE VIEW Highratings
	AS SELECT * 
    FROM Customers
	WHERE rating =
		(SELECT MAX (rating)
        FROM Customers);
