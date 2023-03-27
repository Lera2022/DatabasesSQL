SELECT * FROM employees ORDER BY salary;

SELECT * FROM employees ORDER BY salary DESC;

SELECT specialty, SUM(salary) AS sum_salary FROM employees
GROUP BY specialty
HAVING SUM(salary) > 100000;
