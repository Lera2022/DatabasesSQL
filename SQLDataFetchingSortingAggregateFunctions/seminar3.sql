UPDATE typers SET name='Zara'WHERE id=5;
SELECT * FROM typers;
SELECT SUM(daily_typing_pages) from typers AS sum;
SELECT name, SUM(daily_typing_pages) from typers AS sum_by
GROUP BY name;
SELECT COUNT(*) FROM typers;
SELECT COUNT(DISTINCT name) FROM typers;
SELECT AVG(daily_typing_pages) FROM typers;