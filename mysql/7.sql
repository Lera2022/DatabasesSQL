CREATE TABLE studentMarks (stud_id INT NOT NULL AUTO_INCREMENT
PRIMARY KEY, total_marks INT, grade VARCHAR(5));
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
FROM studentMarks;
SELECT total_marks, grade,
CASE
WHEN total_marks >= 450 THEN 'FIRST CLASS WITH DISTINCTION'
# WHEN total_marks >= 400 AND total_marks < 450 THEN 'FIRST CLASS'
WHEN total_marks between 400 AND 450 THEN 'FIRST CLASS'
WHEN total_marks >= 350 AND total_marks < 400 THEN 'SECOND CLASS'
WHEN total_marks >= 300 AND total_marks < 350 THEN 'THIRD CLASS'
ELSE 'FAIL'
END as class
FROM studentMarks;

SELECT IF(100<200, 'y', 'n');

SELECT total_marks, grade, id,
IF(total_marks > 400, "Great", "Good") AS 'Report card'
FROM studentMarks;