select * from products
order by Price;
select ProductName, ProductCount * Price AS TotalSum
from products
order by TotalSum;
SELECT * FROM Products
LIMIT 3;
SELECT * FROM Products
LIMIT 2, 3;
SELECT DISTINCT Manufacturer FROM Products;	
select distinct Manufacturer, ProductCount from products;
select Manufacturer, count(*) as ModelsCount
from products
group by Manufacturer;