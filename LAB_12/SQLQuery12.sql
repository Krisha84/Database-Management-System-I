-- Lab-12 :

-- PART_A :

SELECT *FROM PERSON
SELECT *FROM DEPT

--1. Find all persons with their department name & code.
SELECT PersonName,DepartmentName,DepartmentCode
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID

--2. Find the person's name whose department is in C-Block.
SELECT P.PersonName
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID
WHERE D.Location = 'C-Block'

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
SELECT P.PersonName,P.Salary,D.DepartmentName
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID
WHERE P.City = 'Jamnagar'

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
SELECT P.PersonName,P.Salary,D.DepartmentName
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID
WHERE P.City <> 'Rajkot'

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
SELECT P.PersonName
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Civil' AND P.JoiningDate > '2001-08-01'

--6. Find details of all persons who belong to the computer department.
SELECT PersonID,PersonName,P.DepartmentID,Salary,JoiningDate,City
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID
WHERE D.DepartmentName = 'Computer'

--7. Display all the person's name with the department whose joining date difference with the current date is more than 365 days.
SELECT P.PersonName,D.DepartmentName
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID
WHERE DATEDIFF(DAY,P.JoiningDate,GETDATE()) > 365

--8. Find department wise person counts.
SELECT D.DepartmentName,COUNT(P.PersonID)
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName

--9. Give department wise maximum & minimum salary with department name.
SELECT D.DepartmentName,MAX(P.Salary),MIN(P.Salary)
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName

--10. Find city wise total, average, maximum and minimum salary.
SELECT P.City, 
       SUM(P.Salary) AS Total_Salary,AVG(P.Salary) AS Avg_Salary, 
       MAX(P.Salary) AS Max_Salary,MIN(P.Salary) AS Min_Salary
FROM PERSON P
GROUP BY P.City

--11. Find the average salary of a person who belongs to Ahmedabad city.
SELECT AVG(P.Salary)
FROM PERSON P
WHERE P.City = 'Ahmedabad'

--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In single column)SELECT CONCAT(P.PersonName,' lives in ',P.City,' and works in ',D.DepartmentName,' Department.')
FROM PERSON P
JOIN DEPT D ON P.DepartmentID = D.DepartmentID-- PART_B :--1. Produce Output Like: <PersonName> earns <Salary> from <DepartmentName> department monthly. (In single column)
SELECT CONCAT(P.PersonName,' earns ',P.Salary,' from ',D.DepartmentName,' department monthly.')
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID

--2. Find city & department wise total, average & maximum salaries.
SELECT P.City,D.DepartmentName, 
       SUM(P.Salary) AS Total_Salary,AVG(P.Salary) AS Avg_Salary,MAX(P.Salary) AS Max_Salary
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID
GROUP BY P.City,D.DepartmentName

--3. Find all persons who do not belong to any department.
SELECT P.PersonName
FROM PERSON P
WHERE P.DepartmentID IS NULL

--4. Find all departments whose total salary is exceeding 100000.
SELECT D.DepartmentName,SUM(P.Salary)
FROM PERSON P
JOIN DEPT D 
ON P.DepartmentID = D.DepartmentID
GROUP BY D.DepartmentName
HAVING SUM(P.Salary) > 100000



-- PART_C :

--1. List all departments who have no person.
SELECT D.DepartmentName
FROM DEPT D
LEFT JOIN PERSON P 
ON D.DepartmentID = P.DepartmentID
WHERE P.PersonID IS NULL

--2. List out department names in which more than two persons are working.
SELECT D.DepartmentName,COUNT(P.PersonID)
FROM DEPT D
JOIN PERSON P 
ON D.DepartmentID = P.DepartmentID
GROUP BY D.DepartmentName
HAVING COUNT(P.PersonID) > 2

--3. Give a 10% increment in the computer department employee’s salary. (Use Update)UPDATE PERSON
SET Salary = Salary*1.10
WHERE DepartmentID = (
    SELECT DepartmentID
    FROM DEPT
    WHERE DepartmentName = 'Computer'
)