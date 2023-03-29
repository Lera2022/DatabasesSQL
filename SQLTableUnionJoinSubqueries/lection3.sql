CREATE TABLE products2
(
product_id INT AUTO_INCREMENT PRIMARY KEY,
category INT,
product_name VARCHAR(20) NOT NULL
);

INSERT INTO products2(category, product_name)
VALUE
(1, 'Системный блок'),
(1, 'Монитор'),
(2, 'Холодильник'),
(2, 'Телевизор'),
(NULL, 'Операционная система');

CREATE TABLE categories
(
category_id INT AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(25)
);

INSERT INTO categories(category_name)
VALUES
('Комплектующие компьютера'),
('Бытовая техника'),
('Мобильные устройства');

SELECT p.product_name, c.category_name
FROM products2 p
LEFT JOIN categories c ON p.category = c.category_id

UNION

SELECT p.product_name, c.category_name
FROM products2 p
RIGHT JOIN categories c ON p.category = c. category_id;