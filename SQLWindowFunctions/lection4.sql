DROP TABLE customer;

CREATE TABLE customer
(
	Customer_id INT NOT NULL,
    Customer_name VARCHAR(15) NOT NULL,
    Contact_no BIGINT NOT NULL,
    Email VARCHAR(15) NOT NULL,
    Purchased_amount DECIMAL(7,2) NOT NULL,
    City VARCHAR(10)
);

INSERT INTO customer (Customer_id, Customer_name, Contact_no, Email, Purchased_amount, City)
VALUES
(184, 'Ravi Kumar', 9887463893, 'ravi@gmail.com', 8000.00, 'Kolkata'),
(987, 'Vinay Das', 9839878678, 'vinay@yahoo.in', 12000.00, 'Delhi'),
(452, 'K.Amarnath', 7598759387, 'amar@gmail.com', 15000.00, 'Kolkata'),
(874, 'Abhinash Desai', 7675787898, 'desai@gmail.com', 5000.00, 'Mumbai');

CREATE VIEW customer_archive AS
SELECT customer_id, customer_name, contact_no, purchased_amount, city
FROM customer
WHERE purchased_amount > 10000;

SELECT * FROM customer_archive;