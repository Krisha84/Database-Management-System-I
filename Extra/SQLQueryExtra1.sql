-- SQL Extra Queries For Aggregate Functions With Group By (Without Having) :

-- 1. Calculate the average salary for each city.
SELECT CITY,AVG(SALARY) 
FROM EMP 
GROUP BY CITY

-- 2. Find the second highest salary from entire table.
SELECT MAX(SALARY) 
FROM EMP 
WHERE SALARY < (SELECT MAX(SALARY) FROM EMP)

-- 3. Find count of employees who joined in first half of any year.
SELECT *FROM EMP 
WHERE MONTH(JOINDATE) < 7 

-- 4.
SELECT TOP 1 ENAME,SALARY 
FROM EMP 
ORDER BY JOINDATE DESC

-- 5. Display the name and salary of the employees 
SELECT MAX(SALARY) AS MAX_SAL,ENAME,DEPARTMENT 
FROM EMP 
WHERE SALARY IN 
		(SELECT MAX(SALARY) 
		FROM EMP 
		GROUP BY DEPARTMENT)
GROUP BY ENAME,DEPARTMENT
-- ERROR : SELECT MAX(SALARY),DEPARTMENT,ENAME FROM EMP GROUP BY DEPARTMENT
-- 6. Select max sales_amount without using maxSELECT TOP 1 SALES_AMOUNT
FROM SALES_DATA
ORDER BY SALES_AMOUNT DESC

-- 7. Select min sales_amount without using min
SELECT TOP 1 SALES_AMOUNT
FROM SALES_DATA
ORDER BY SALES_AMOUNT

-- 8. Extra_Query (display which contains % in the string)
SELECT *FROM STUDENT WHERE WEBSITE LIKE '%[%]%'

-- 9. Math Function ROUND
SELECT ROUND(153.245,2,1)
SELECT ROUND(153.245,2)
SELECT ROUND(153.245,1)
SELECT ROUND(153.245,0)
SELECT ROUND(153.245,-2)