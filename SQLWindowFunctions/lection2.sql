SELECT
	Date,
    Medium,
    Conversions,
    SUM(Conversions) OVER(PARTITION BY Date) AS 'Sum',
    COUNT(Conversions) OVER(PARTITION BY Date) AS 'Count',
    AVG(Conversions) OVER(PARTITION BY Date) AS 'Avg',
    MAX(Conversions) OVER(PARTITION BY Date) AS 'Max',
    MIN(Conversions) OVER(PARTITION BY Date) AS 'Min'
FROM Orders;

SELECT
	Date,
    Medium,
    Conversions,
    ROW_NUMBER()
    OVER(PARTITION BY Date ORDER BY Conversions) AS 'Row_number',
    RANK()
    OVER(PARTITION BY Date ORDER BY Conversions) AS 'Rank',
    DENSE_RANK()
    OVER(PARTITION BY Date ORDER BY Conversions) AS 'Dense_Rank',
    NTILE(3)
    OVER(PARTITION BY Date ORDER BY Conversions) AS 'Ntile'
FROM Orders;

SELECT
	Date,
    Medium,
    Conversions,
    LAG(Conversions) OVER(PARTITION BY Date ORDER BY Date) AS 'Lag',
    LEAD(Conversions) OVER(PARTITION BY Date ORDER BY Date) AS 'Lead',
    FIRST_VALUE(Conversions) OVER(PARTITION BY Date ORDER BY Date) AS 'First_Value',
    LAST_VALUE(Conversions) OVER(PARTITION BY Date ORDER BY Date) AS 'Last_Value'
FROM Orders;