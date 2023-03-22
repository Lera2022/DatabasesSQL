CREATE TABLE studentMarks 
(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY, 
total_marks INT, 
grade VARCHAR(5)
);
select * from studentMarks;
INSERT INTO studentMarks(total_marks, grade)
VALUES
(450, 'A'),
(480, 'A+'),
(490, 'A++'),
(440, 'B+'),
(400, 'C+'),
(380,'C'),
(250, 'D'),
(200,'E'),
(100,'F'),
(150,'F'),
(220, 'E');
SELECT total_marks, grade,
CASE grade
WHEN 'A++' THEN 'DISTINCTION'
WHEN 'A+' THEN 'FIRST CLASS'
WHEN 'A' THEN 'FIRST CLASS'
WHEN 'B' THEN 'SECOND CLASS'
WHEN 'B+' THEN 'SECOND CLASS'
WHEN 'C+' THEN 'THIRD CLASS'
ELSE 'FAIL'
END AS class
FROM studentMarks