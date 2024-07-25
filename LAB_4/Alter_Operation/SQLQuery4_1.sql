-- LAB_4 (Alter_Operation) :

-- PART-A :

SELECT *FROM DEPOSIT

-- 1. Add two more columns City VARCHAR (20) and Pincode INT.
ALTER TABLE DEPOSIT 
ADD CITY VARCHAR(20), PINCODE INT

-- 2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
ALTER TABLE DEPOSIT 
ALTER COLUMN CNAME VARCHAR(35)

-- 3. Change the data type DECIMAL to INT in amount Column.
ALTER TABLE DEPOSIT 
ALTER COLUMN AMOUNT INT

-- 4. Rename Column ActNo to ANO.
sp_rename 'DEPOSIT.ACOUNTNO','ANO'

-- 5. Delete Column City from the DEPOSIT table.
ALTER TABLE DEPOSIT 
DROP COLUMN CITY 

-- 6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
SP_RENAME 'DEPOSIT','DEPOSIT_DETAIL'

SELECT *FROM DEPOSIT_DETAIL



-- PART-B :

-- 1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
sp_rename 'DEPOSIT_DETAIL.ADATE','AOPENDATE'

-- 2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
ALTER TABLE DEPOSIT_DETAIL 
DROP COLUMN AOPENDATE 

-- 3. Rename Column CNAME to CustomerName.
sp_rename 'DEPOSIT_DETAIL.CNAME','CustomerName'



-- PART-C :

CREATE TABLE STUDENT_DETAIL(
	ENROLL_NO VARCHAR(20),
	NAME VARCHAR(25),
	CPI DECIMAL(5,2),
	BDATE DATETIME
);

INSERT INTO STUDENT_DETAIL VALUES
(23010101039,'KRISHA',8.4,'2006-04-05'),
(23010101222,'KUNJ',8.8,'2005-01-23'),
(23010101241,'DIYA',8.4,'2005-09-17'),
(23010101242,'DRASHTI',8.5,'2005-08-25'),
(23010101243,'XYZ',9,'2006-02-13');

SELECT *FROM STUDENT_DETAIL

-- 1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
ALTER TABLE STUDENT_DETAIL 
ADD CITY VARCHAR(20) NOT NULL DEFAULT 'RAJKOT',BACKLOG INT

-- 2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
ALTER TABLE STUDENT_DETAIL 
ALTER COLUMN NAME VARCHAR(35)

-- 3. Change the data type DECIMAL to INT in CPI Column.
ALTER TABLE STUDENT_DETAIL 
ALTER COLUMN CPI INT

-- 4. Rename Column Enrollment_No to ENO.
sp_rename 'STUDENT_DETAIL.ENROLL_NO','ENO'

-- 5. Delete Column City from the student_detail table.
ALTER TABLE STUDENT_DETAIL
DROP COLUMN CITY

-- 6. Change name of table student_detail to STUDENT_MASTER.
sp_rename 'STUDENT_DETAIL','STUDENT_MASTER'

SELECT *FROM STUDENT_MASTER