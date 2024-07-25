--LAB_3 (SELECT INTO OPERATION) :

--PART_A :

CREATE TABLE CRICKET(
	NAME VARCHAR(50),
	CITY VARCHAR(50),
	AGE INT
);

INSERT INTO CRICKET VALUES
('Sachin Tendulkar','Mumbai',30),
('Rahul Dravid','Bombay',35),
('M.S. Dhoni','Jharkhand',31),
('Suresh Raina','Gujarat',30)

SELECT *FROM CRICKET

-- 1. Create table Worldcup from cricket with all the columns and data.
SELECT *INTO WORLDCUP FROM CRICKET
SELECT *FROM WORLDCUP

-- 2. Create table T20 from cricket with first two columns with no data.
SELECT NAME,CITY INTO T20 FROM CRICKET WHERE 1=2
SELECT *FROM T20

-- 3. Create table IPL From Cricket with No Data.
SELECT *INTO IPL FROM CRICKET WHERE 'A'='B'
SELECT *FROM IPL


-- PART_B :

CREATE TABLE EMPLOYEE(
	NAME VARCHAR(50),
	CITY VARCHAR(50),
	AGE INT
);

INSERT INTO EMPLOYEE VALUES
('Jay Patel','Rajkot',30),
('Rahul Dave','Baroda',35),
('Jeet Patel','Surat',31),
('Vijay Raval','Rajkot',30)

SELECT *FROM EMPLOYEE

-- 1. Create table Employee_detail from Employee with all the columns and data. 
SELECT *INTO EMPLYOEE_DETAIL FROM EMPLOYEE
SELECT *FROM EMPLYOEE_DETAIL

-- 2. Create table Employee_data from Employee with first two columns with no data.
SELECT NAME,CITY INTO EMPLYOEE_DATA FROM EMPLOYEE WHERE 0=1
SELECT *FROM EMPLYOEE_DATA

-- 3. Create table Employee_info from Employee with no Data.
SELECT *INTO EMPLYOEE_INFO FROM EMPLOYEE WHERE 1+1=11
SELECT *FROM EMPLYOEE_INFO


-- PART_C :

-- 1. Insert the Data into Employee_info from Employee whose CITY is Rajkot.
INSERT EMPLOYEE_INFO FROM EMPLOYEE WHERE CITY = 'RAJKOT'
SELECT FROM EMPLOYEE_INFO

DROP TABLE EMPLOYEE_INFO

-- 2. Insert the Data into Employee_info from Employee whose age is more than 32.
SELECT *INTO EMPLOYEE_INFO FROM EMPLOYEE WHERE AGE > 32
SELECT *FROM EMPLOYEE_INFO