DELIMITER **

CREATE FUNCTION fibonacci(n INT) RETURNS INT
DETERMINISTIC
BEGIN
	DECLARE a INT DEFAULT 0;
    DECLARE b INT DEFAULT 1;
    DECLARE i INT DEFAULT 0;
    DECLARE sum INT DEFAULT 0;
    
    WHILE (i < n) DO
		SET sum = a + b;
        SET a = b;
        SET b = sum;
        SET i = i + 1;
	END WHILE;
    
    RETURN sum;
END**

DELIMITER ;
    
SELECT fibonacci(5);