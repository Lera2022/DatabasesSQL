DELIMITER %%
CREATE PROCEDURE hello()
BEGIN
	CASE
		WHEN CURTIME() BETWEEN '06:00:00' AND '11:59:59' THEN SELECT 'Доброе утро';
        WHEN CURTIME() BETWEEN '12:00:00' AND '17:59:59' THEN SELECT 'Добрый день';
        WHEN CURTIME() BETWEEN '18:00:00' AND '23:59:59' THEN SELECT 'Добрый вечер';
        ELSE
			SELECT 'Доброй ночи';
	END CASE;
        
END %%

DELIMITER ;
	
CALL hello();