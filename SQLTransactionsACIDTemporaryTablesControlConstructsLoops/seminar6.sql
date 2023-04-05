-- [label_name:] WHILE
-- condition DO
-- statements_list
-- END WHILE [label_name]

DELIMITER %%
CREATE PROCEDURE RepN(IN x INT)
BEGIN
	DECLARE x INT;
    DECLARE str VARCHAR(255);
    SET x = 5;
    SET str = '';
    REPEAT
    SET str = CONCAT(str, x, ',');
    SET x = x - 1;
    UNTIL x <= 0
    END REPEAT;
END %%

CALL RepN(5);