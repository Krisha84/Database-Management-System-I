-- LAB_6 : ( STRING_FUNCTIONS )

-- PART-A :

-- 1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
SELECT LENGTH(NULL) AS Length_NULL,
       LENGTH('hello') AS Length_Hello,
       LENGTH('') AS Length_Blank

-- 2. Display your name in lower & upper case
SELECT LOWER('YourName') AS Lower_Name,
       UPPER('YourName') AS Upper_Name;

-- 3. Display first three characters of your name
SELECT SUBSTRING('YourName', 1, 3) AS First_Three_Chars

-- 4. Display 3rd to 10th character of your name
SELECT SUBSTRING('YourName', 3, 8) AS Chars_3_to_10

-- 5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE
SELECT REPLACE('abc123efg', '123', 'XYZ') AS Replaced_1,
       REPLACE('abcabcabc', 'c', '5') AS Replaced_2;


-- 6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9
SELECT ASCII('a') AS ASCII_a,
       ASCII('A') AS ASCII_A,
       ASCII('z') AS ASCII_z,
       ASCII('Z') AS ASCII_Z,
       ASCII('0') AS ASCII_0,
       ASCII('9') AS ASCII_9

-- 7. Write a query to display character based on number 97, 65,122,90,48,57
SELECT CHAR(97) AS Char_97,
       CHAR(65) AS Char_65,
       CHAR(122) AS Char_122,
       CHAR(90) AS Char_90,
       CHAR(48) AS Char_48,
       CHAR(57) AS Char_57

-- 8. Write a query to remove spaces from let of a given string ‘hello world ‘
SELECT LTRIM('hello world ') AS LTrimmed_String

-- 9. Write a query to remove spaces from right of a given string ‘ hello world ‘
SELECT RTRIM(' hello world ') AS RTrimmed_String

-- 10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’
SELECT SUBSTRING('SQL Server', 1, 4) AS First_4_Chars,
       SUBSTRING('SQL Server', LENGTH('SQL Server') - 4, 5) AS Last_5_Chars

-- 11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function)
SELECT CAST('1234.56' AS DECIMAL(10, 2)) AS Casted_Number,
       CONVERT(DECIMAL(10, 2), '1234.56') AS Converted_Number

-- 12. Write a query to convert a float 10.58 to integer (Use cast and convert function)
SELECT CAST(10.58 AS INT) AS Casted_Integer,
       CONVERT(INT, 10.58) AS Converted_Integer

-- 13. Put 10 space before your name using function
SELECT (SPACE (10) + 'Darshan University') AS Spaced_Name

-- 14. Combine two strings using + sign as well as CONCAT ()
SELECT 'String1' + ' ' + 'String2' AS Combined_With_Plus,
       CONCAT('String1', ' ', 'String2') AS Combined_With_Concat

-- 15. Find reverse of “Darshan”
SELECT REVERSE('Darshan') AS Reversed_Name
 
-- 16. Repeat your name 3 times
SELECT REPLICATE('YourName', 3) AS Repeated_Name




-- PART_B :

-- 1. Find the length of FirstName and LastName columns


-- 2. Display FirstName and LastName columns in lower & upper case


-- 3. Display first three characters of FirstName column...

-- 4. Display 3rd to 10th character of Website column


-- 5. Write a query to display first 4 & Last 5 characters of Website column.



-- PART_C :

-- 1. Put 10 space before FirstName using function


-- 2. Combine FirstName and LastName columns using + sign as well as CONCAT ()


-- 3. Combine all columns using + sign as well as CONCAT ()


-- 4. Find reverse of FirstName column


-- 5. Repeat FirstName column 3 times


-- 6. Give the Names which contains 5 characters


-- 7. Combine the result as <FirstName> Lives in <City>


-- 8. Combine the result as Student_ID of < FirstName > is <StuID> 