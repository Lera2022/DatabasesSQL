INSERT INTO bankaccounts VALUES("ACC1", 1000);
INSERT INTO bankaccounts VALUES("ACC2", 1000);
--  Изменим баланс на аккаунтах
START TRANSACTION;
UPDATE bankaccounts SET funds=funds-100 WHERE accountno='ACC1';
UPDATE bankaccounts SET funds=funds+100 WHERE accountno='ACC2';
COMMIT;