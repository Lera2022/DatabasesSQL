create table Products
(
Id int auto_increment primary key,
ProductName varchar(30) not null,
Manufacturer varchar(20) not null,
ProductCount int default 0,
Price decimal not null
);
insert into Products(ProductName, Manufacturer, ProductCount, Price)
values
('iPhone X', 'Apple', 3, 76000),
('iPhone 8', 'Apple', 2, 51000),
('iPhone 7', 'Apple', 5, 32000),
('Galaxy S9', 'Samsung', 2, 56000),
('Galaxy S8', 'Samsung', 1, 46000),
('Honor 10', 'Huawei', 5, 28000),
('Nokia 8', 'HMD Global', 6, 38000);

select avg(price) as average_price from products;
select avg(price) from products
where manufacturer='apple';
select count(*) from products;
select min(price), max(price) from products;
select manufacturer, count(*) as ModelCount
from products
group by manufacturer
having count(*) > 1;
select manufacturer, count(*) as Models, sum(productcount) as Units
from products
where price * productcount > 80000
group by manufacturer
having sum(productcount) > 2
order by Units desc;
select *
from products
order by price asc;
-- DESC - сортировка по убыванию

-- COUNT
SELECT COUNT(*)
FROM products;

SELECT Manufacturer, COUNT(*) AS Models, Price, ProductCount
FROM Products
WHERE Price > 40000
GROUP BY Manufacturer;