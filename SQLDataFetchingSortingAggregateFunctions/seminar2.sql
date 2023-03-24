CREATE TABLE typers
(
id INT NOT NULL,
name VARCHAR(4) NOT NULL,
work_date DATE NOT NULL,
daily_typing_pages INT NOT NULL
);

INSERT INTO typers (id, name, work_date, daily_typing_pages)
VALUE
(1, 'John', '2007-01-24', 250),
(2, 'Ram', '2007-05-27', 220),
(3, 'Jack', '2007-05-06', 170),
(3, 'Jack', '2007-04-06', 100),
(4, 'Jill', '2007-04-06', 220),
(5, 'Zara', '2007-06-06', 300),
(5, 'John', '2007-02-06', 350);

