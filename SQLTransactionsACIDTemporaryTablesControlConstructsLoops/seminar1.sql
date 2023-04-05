CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255)
);

INSERT INTO customers (id, name, email) VALUES (1, 'John Doe', 'johndoe@example.com');

INSERT INTO customers (id, name, email) VALUES (2, 'Jane Doe', 'janedoe@example.com'), (3, 'Bob Smith', 'bobsmith@example.com');

DELIMITER &&
CREATE PROCEDURE add_customer (IN customer_id INT, IN customer_name VARCHAR(255), IN customer_email VARCHAR(255))
BEGIN
    INSERT INTO customers (id, name, email) VALUES (customer_id, customer_name, customer_email);
END
&&

CALL add_customer(6, 'Janes Doe', 'janedoe@example.com');


SELECT * FROM customers;