-- LAB_4 (Delete_Truncate_Drop_Operation) :

-- PART-A :

SELECT *FROM DEPOSIT_DETAIL

-- 1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000. 
DELETE FROM DEPOSIT_DETAIL 
WHERE AMOUNT >= 4000

-- 2. Delete all the accounts CHANDI BRANCH.
DELETE FROM DEPOSIT_DETAIL 
WHERE BNAME= 'CHANDI'

-- 3. Delete all the accounts having account number (ANO) is greater than 105.
DELETE FROM DEPOSIT_DETAIL
WHERE ANO = 105

-- 4. Delete all the records of Deposit_Detail table. (Use Truncate)
TRUNCATE TABLE DEPOSIT_DETAIL

-- 5. Remove Deposit_Detail table. (Use Drop)
DROP TABLE DEPOSIT_DETAIL



-- PART-B :

CREATE TABLE EMPLOYEE_MASTER(
	EMP_NO INT,
	EMP_Name VARCHAR(25),
	JOIN_DATE DATETIME,
	SALARY DECIMAL (8,2),
	CITY VARCHAR(20)
);

INSERT INTO EMPLOYEE_MASTER VALUES
(101,'Keyur',5-1-02,12000,'Rajkot'),
(102,'Hardik',15-2-04,14000,'Ahmedabad'),
(103,'Kajal',14-3-06,15000,'Baroda'),
(104,'Bhoomi',23-6-05,12500,'Ahmedabad'),
(105,'Harmit',15-2-04,14000,'Rajkot'),
(106,'Mitesh',25-9-01,5000,'Jamnagar'),
(107,'Meera',NULL,7000,'Morbi'),
(108,'Kishan',6-2-03,10000,NULL);

SELECT *FROM EMPLOYEE_MASTER

-- 1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000. 
DELETE FROM EMPLOYEE_MASTER 
WHERE SALARY>=14000

-- 2. Delete all the Employees who belongs to ‘RAJKOT’ city.
DELETE FROM EMPLOYEE_MASTER 
WHERE CITY='RAJKOT'

-- 3. Delete all the Employees who joined after 1-1-2007.
DELETE FROM EMPLOYEE_MASTER 
WHERE JOIN_DATE>'2007-01-01'

-- 4. Delete the records of Employees whose joining date is null and Name is not null.
DELETE FROM EMPLOYEE_MASTER 
WHERE JOIN_DATE IS NULL AND EMP_NAME IS NOT NULL

-- 5. Delete the records of Employees whose salary is 50% of 20000.
DELETE FROM EMPLOYEE_MASTER
WHERE SALARY = (20000 * 0.50)

-- 6. Delete the records of Employees whose City Name is not empty.
DELETE FROM EMPLOYEE_MASTER WHERE CITY IS NOT NULL

-- 7. Delete all the records of Employee_MASTER table. (Use Truncate)
TRUNCATE TABLE EMPLOYEE_MASTER

-- 8. Remove Employee_MASTER table.
DROP TABLE EMPLOYEE_MASTER
