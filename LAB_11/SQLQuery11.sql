-- LAB_11 : 

CREATE TABLE STU_INFO(
	RNO INT PRIMARY KEY,
	NAME VARCHAR(50),
	BRANCH VARCHAR(50)
);

INSERT INTO STU_INFO VALUES
(101,'Raju','CE'),
(102,'Amit','CE'),
(103,'Sanjay','ME'),
(104,'Neha','EC'),
(105,'Meera','EE'),
(106,'Mahesh','ME');

SELECT *FROM STU_INFO

SELECT *FROM RESULT

SELECT *FROM EMPLOYEE_MASTER

-- Part-A:

-- 1. Combine information from student and result table using cross join or Cartesian product.
SELECT *FROM STU_INFO
CROSS JOIN RESULT

-- 2. Perform inner join on Student and Result tables.
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO

-- 3. Perform the left outer join on Student and Result tables.
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI
FROM STU_INFO
LEFT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO

-- 4. Perform the right outer join on Student and Result tables.
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI
FROM STU_INFO
RIGHT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO

-- 5. Perform the full outer join on Student and Result tables. 
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI
FROM STU_INFO
FULL JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO

-- 6. Display Rno, Name, Branch and SPI of all students.
SELECT STU_INFO.RNO,STU_INFO.NAME,STU_INFO.BRANCH,RESULT.SPI
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO

-- 7. Display Rno, Name, Branch and SPI of CE branch’s student only.
SELECT STU_INFO.RNO,NAME,BRANCH,SPI
FROM STU_INFO
RIGHT JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE BRANCH = 'CE'

-- 8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
SELECT STU_INFO.RNO,NAME,BRANCH,SPI
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE BRANCH <> 'EC'

-- 9. Display average result of each branch.
SELECT BRANCH,AVG(SPI)
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH

-- 10. Display average result of CE and ME branch.
SELECT BRANCH,AVG(SPI)
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
WHERE BRANCH IN ('CE','ME')
GROUP BY BRANCH


-- PART-B :

-- 1. Display average result of each branch and sort them in ascending order by SPI.
SELECT BRANCH,AVG(SPI)
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH
ORDER BY AVG(SPI)

-- 2. Display highest SPI from each branch and sort them in descending order.
SELECT BRANCH,MAX(SPI)
FROM STU_INFO
INNER JOIN RESULT
ON STU_INFO.RNO = RESULT.RNO
GROUP BY BRANCH
ORDER BY MAX(SPI) DESC


-- PART-C :

-- 1. Retrieve the names of employee along with their manager’s name from the Employee table.
SELECT *FROM EMPLOYEE_MASTER E
LEFT JOIN EMPLOYEE_MASTER EM
ON E.MANAGER_NO = EM.EMPLOYEE_NO