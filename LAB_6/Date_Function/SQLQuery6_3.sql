-- LAB_6 : ( DATE_FUNCTIONS )

-- PART-A :

-- 1. Write a query to display the current date & time. Label the column Today_Date
SELECT GETDATE() AS Today_Date

-- 2. Write a query to find new date after 365 day with reference to today
SELECT (GETDATE()+365) AS AFTER_365_DATE

-- 3. Display the current date in a format that appears as may 5 1994 12:00AM.
SELECT CONVERT(VARCHAR, GETDATE())

-- 4. Display the current date in a format that appears as 03 Jan 1995.
SELECT CONVERT(VARCHAR, GETDATE(),106)

-- 5. Display the current date in a format that appears as Jan 04, 96.
SELECT CONVERT(VARCHAR(20), GETDATE(),7)

-- 6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
SELECT DATEDIFF(MONTH,'2008-12-31','2009-03-31')

-- 7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
SELECT DATEDIFF(YEAR,'2012/01/25','2010/09/14')

-- 8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
SELECT DATEDIFF(HOUR,'2012-01-25 07:00','2012-01-26 10:30')

-- 9. Write a query to extract Day, Month, Year from given date 12-May-16.
SELECT DAY('2016/05/12'),MONTH('2016/05/12'),YEAR('2016/05/12')

-- 10. Write a query that adds 5 years to current date.
SELECT DATEADD(YEAR,5,GETDATE())

-- 11. Write a query to subtract 2 months from current date.
SELECT DATEADD(MONTH,-2,GETDATE())

-- 12. Extract month from current date using datename () and datepart () function.
SELECT DATENAME(MONTH,GETDATE())
SELECT DATEPART(MONTH,GETDATE())

-- 13. Write a query to find out last date of current month.
SELECT EOMONTH(GETDATE())

-- 14. Write a query to display date & time after 30 days from today.
SELECT DATEADD(DAY, 30, GETDATE())



-- PART_B :

CREATE TABLE EMP_DETAIL(
	EMP_NO INT,
	EMP_NAME VARCHAR(50),
	JOINING_DATE DATE,
	SALARY INT,
	CITY VARCHAR(50)
);

INSERT INTO EMP_DETAIL VALUES
(101,'Keyur','2002-01-15',12000.00,'Rajkot'),
(102,'Hardik','2004-02-15',14000.00,'Ahmedabad'),
(103,'Kajal','2006-03-14',15000.00,'Baroda'),
(104,'Bhoomi','2005-06-23',12500.00,'Ahmedabad'),
(105,'Harmit','2004-02-15',14000.00,'Rajkot'),
(106,'Jay','2007-03-12',12000.00,'Surat');
SELECT *FROM EMP_DETAIL

-- 1. Write a query to find new date after 365 day with reference to JoiningDate
SELECT EMP_NO,EMP_NAME,JOINING_DATE,
       DATEADD(DAY,365,JOINING_DATE)
FROM EMP_DETAIL

-- 2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM
SELECT EMP_NO,EMP_NAME,JOINING_DATE,
       FORMAT(JOINING_DATE,'MMM d yyyy h:mm tt')
FROM EMP_DETAIL

-- 3. Display the JoiningDate in a format that appears as 03 Jan 1995
SELECT EMP_NO,EMP_NAME,JOINING_DATE,
       FORMAT(JOINING_DATE,'dd MMM yyyy')
FROM EMP_DETAIL

-- 4. Display the JoiningDate in a format that appears as Jan 04, 96
SELECT EMP_NO,EMP_NAME,JOINING_DATE,
       FORMAT(JOINING_DATE,'MMM dd, yy')
FROM EMP_DETAIL

-- 5. Write a query to find out total number of months between JoiningDate and 31-Mar-09
SELECT EMP_NO,EMP_NAME,JOINING_DATE,
       DATEDIFF(MONTH,JOINING_DATE,'2009-03-31')
FROM EMP_DETAIL

-- 6. Write a query to find out total number of years between JoiningDate and 14-Sep-10
SELECT EMP_NO,EMP_NAME,JOINING_DATE,
       DATEDIFF(YEAR,JOINING_DATE,'2010-09-14')
FROM EMP_DETAIL


-- PART_C :

-- 1. Write a query to extract Day, Month, Year from JoiningDate
SELECT JOINING_DATE,
	   DAY(JOINING_DATE) AS Day,
       MONTH(JOINING_DATE) AS Month,
       YEAR(JOINING_DATE) AS Year
FROM EMP_DETAIL

-- 2. Write a query that adds 5 years to JoiningDate
SELECT JOINING_DATE,DATEADD(YEAR,5,JOINING_DATE)
FROM EMP_DETAIL

-- 3. Write a query to subtract 2 months from JoiningDate
SELECT JOINING_DATE,DATEADD(MONTH,-2,JOINING_DATE)
FROM EMP_DETAIL

-- 4. Extract month from JoiningDate using datename () and datepart () function
SELECT JOINING_DATE,
       DATENAME(MONTH,JOINING_DATE),
       DATEPART(MONTH,JOINING_DATE)
FROM EMP_DETAIL

-- 5. Calculate your age in years and months
SELECT JOINING_DATE,
       DATEDIFF(YEAR,JOINING_DATE,GETDATE()) AS AGE_YEAR,
       DATEDIFF(MONTH,JOINING_DATE,GETDATE())%12 AS AGE_MONTH
FROM EMP_DETAIL