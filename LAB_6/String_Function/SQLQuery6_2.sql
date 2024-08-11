-- LAB_6 : ( STRING_FUNCTIONS )

-- PART-A :

-- 1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LEN(NULL),LEN('hello'),LEN('')

-- 2. Display your name in lower & upper case
SELECT LOWER('YourName') AS Lower_Name,
       UPPER('YourName') AS Upper_Name;

-- 3. Display first three characters of your name
SELECT SUBSTRING('YourName',1,3)

-- 4. Display 3rd to 10th character of your name
SELECT SUBSTRING('YourName',3,8)

-- 5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE
SELECT REPLACE('abc123efg','123','XYZ'),
       REPLACE('abcabcabc','c','5')


-- 6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9
SELECT ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9')

-- 7. Write a query to display character based on number 97, 65,122,90,48,57
SELECT CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57)

-- 8. Write a query to remove spaces from let of a given string ‘hello world ‘
SELECT LTRIM('hello world ')

-- 9. Write a query to remove spaces from right of a given string ‘ hello world ‘
SELECT RTRIM(' hello world ')

-- 10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’
SELECT SUBSTRING('SQL Server',1,4),
       SUBSTRING('SQL Server', LEN('SQL Server')- 4,5) 

-- 11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function)
SELECT CAST('1234.56' AS DECIMAL(10,2)),
       CONVERT(DECIMAL(10, 2),'1234.56')

-- 12. Write a query to convert a float 10.58 to integer (Use cast and convert function)
SELECT CAST(10.58 AS INT),CONVERT(INT,10.58)

-- 13. Put 10 space before your name using function
SELECT (SPACE (10) + 'Darshan University')

-- 14. Combine two strings using + sign as well as CONCAT ()
SELECT 'String1'+' '+'String2',
       CONCAT('String1',' ','String2')

-- 15. Find reverse of “Darshan”
SELECT REVERSE('Darshan') AS Reversed_Name
 
-- 16. Repeat your name 3 times
SELECT REPLICATE('YourName', 3) AS Repeated_Name


-- PART_B :

-- 1. Find the length of FirstName and LastName columns
SELECT FIRST_NAME,LEN(FIRST_NAME) AS FN_length,
	   LAST_NAME,LEN(LAST_NAME) AS LN_length
FROM STUDENT

-- 2. Display FirstName and LastName columns in lower & upper case
SELECT LOWER(FIRST_NAME),UPPER(FIRST_NAME),
       LOWER(LAST_NAME),UPPER(LAST_NAME)
FROM STUDENT

-- 3. Display first three characters of FirstName column...
SELECT FIRST_NAME,SUBSTRING(FIRST_NAME,1,3)
FROM STUDENT

-- 4. Display 3rd to 10th character of Website column
SELECT WEBSITE,SUBSTRING(WEBSITE,3,8)
FROM STUDENT

-- 5. Write a query to display first 4 & Last 5 characters of Website column.
SELECT WEBSITE,CONCAT(SUBSTRING(WEBSITE, 1, 4), 
	   SUBSTRING(WEBSITE,LEN(WEBSITE)- 4, 5))
FROM STUDENT


-- PART_C :

-- 1. Put 10 space before FirstName using function
SELECT CONCAT(REPLICATE(' ', 10),FIRST_NAME)
FROM STUDENT

-- 2. Combine FirstName and LastName columns using + sign as well as CONCAT ()
SELECT FIRST_NAME,LAST_NAME,CONCAT(FIRST_NAME,' ',LAST_NAME)
FROM STUDENT

SELECT FIRST_NAME,LAST_NAME,(FIRST_NAME+' '+LAST_NAME)
FROM STUDENT

-- 3. Combine all columns using + sign as well as CONCAT ()
SELECT FIRST_NAME,LAST_NAME,WEBSITE,
    CONCAT(FIRST_NAME,' ',LAST_NAME,' ',WEBSITE)
FROM STUDENT

SELECT FIRST_NAME,LAST_NAME,WEBSITE,
       FIRST_NAME + ' ' + LAST_NAME + ' ' + WEBSITE
FROM STUDENT

-- 4. Find reverse of FirstName column
SELECT FIRST_NAME,REVERSE(FIRST_NAME)
FROM STUDENT

-- 5. Repeat FirstName column 3 times
SELECT FIRST_NAME,REPLICATE(FIRST_NAME,3)
FROM STUDENT

-- 6. Give the Names which contains 5 characters
SELECT FIRST_NAME,LAST_NAME
FROM STUDENT
WHERE LEN(FIRST_NAME)=5

-- 7. Combine the result as <FirstName> Lives in <City>
SELECT FIRST_NAME,CITY,CONCAT(FIRST_NAME,' Lives in ',CITY)
FROM STUDENT

-- 8. Combine the result as Student_ID of < FirstName > is <StuID>
SELECT FIRST_NAME,STUDENT_ID,
       CONCAT('Student_ID of ', FIRST_NAME, ' is ', STUDENT_ID)
FROM STUDENT