	DELIMITER **
    
    CREATE FUNCTION FB (num INT)
		returns varchar(30)
	deterministic
	begin
        declare fib1 INT DEFAULT 0;
        declare fib2 INT DEFAULT 1;
        declare fib3 INT DEFAULT 0;
        declare str VARCHAR(255) DEFAULT '01';
        IF num = 1 THEN
        RETURN fib1;
        ELSEIF num = 2 THEN
        return concat(fib1, fib2);
        ELSE
			WHILE num > 2 DO
				SET fib3 = fib1 + fib2;
                SET fib1 = fib2;
                SET fib2 = fib3;
                SET num = num - 1;
                SET str = concat(str, fib3);
                END WHILE;
			END IF;
	end **
    
    DELIMITER ;
    
    SELECT FB(5);