-- LAB_6 : ( MATH_FUNCTIONS )

-- PART-A :

-- 1. Display the result of 5 multiply by 30
SELECT 5*30 AS RESULT

-- 2. Find out the absolute value of -25, 25, -50 and 50
SELECT ABS(-25),ABS(25),ABS(-50),ABS(50) 

-- 3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2
SELECT CEILING(25.2),CEILING(25.7),CEILING(-25.2)


-- 4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2
SELECT FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2)

-- 5. Find out remainder of 5 divided 2 and 5 divided by 3
SELECT 5 % 2,5 % 3

-- 6. Find out value of 3 raised to 2nd power and 4 raised 3rd power
SELECT POWER(3,2),POWER(4,3)

-- 7. Find out the square root of 25, 30 and 50
SELECT SQRT(25),SQRT(30),SQRT(50)

-- 8. Find out the square of 5, 15, and 25
SELECT POWER(5,2),POWER(15,2),POWER(25,2)

-- 9. Find out the value of PI
SELECT PI() AS PI_VALUE

-- 10. Find out round value of 157.732 for 2, 0 and -2 decimal points
SELECT ROUND(157.732, 2),ROUND(157.732, 0),ROUND(157.732, -2)

-- 11. Find out exponential value of 2 and 3
SELECT EXP(2),EXP(3)

-- 12. Find out logarithm having base e of 10 and 2
SELECT LOG(1),LOG(2)

-- 13. Find out logarithm having base b having value 10 of 5 and 100
SELECT LOG10(5),LOG10(100)

-- 14. Find sine, cosine and tangent of 3.1415
SELECT SIN(3.1415),COS(3.1415),TAN(3.1415)

-- 15. Find sign of -25, 0 and 25
SELECT SIGN(-25),SIGN(0),SIGN(25)

-- 16. Generate random number using function
SELECT RAND() AS Random_Number


-- PART_B :

CREATE TABLE EMP_MASTER(
    EMP_NO INT,
    EMP_NAME VARCHAR(50),
    JOIN_DATE DATE,
    SALARY DECIMAL(10,2),
    COMMISSION DECIMAL(10,2),
    CITY VARCHAR(50),
    DEPT_CODE VARCHAR(10)
);

INSERT INTO EMP_MASTER (EMP_NO, EMP_NAME, JOIN_DATE, SALARY, COMMISSION, CITY, DEPT_CODE) VALUES
(101, 'Keyur', '2002-05-01', 12000.00, 4500, 'Rajkot', '3@g'),
(102, 'Hardik', '2004-02-15', 14000.00, 2500, 'Ahmedabad', '3@'),
(103, 'Kajal', '2006-03-14', 15000.00, 3000, 'Baroda', '3-GD'),
(104, 'Bhoomi', '2005-06-23', 12500.00, 1000, 'Ahmedabad', '1A3D'),
(105, 'Harmit', '2004-02-15', 14000.00, 2000, 'Rajkot', '312A');

SELECT *FROM EMP_MASTER

-- 1. Display the result of Salary plus Commission
SELECT EMP_NO, EMP_NAME,(SALARY + COMMISSION)
FROM EMP_MASTER

-- 2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2
SELECT CEILING(55.2),CEILING(35.7),CEILING(-55.2)

-- 3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2
SELECT FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2)

-- 4. Find out remainder of 55 divided 2 and 55 divided by 3
SELECT 55%2,55%3

-- 5. Find out value of 23 raised to 2nd power and 14 raised 3rd power
SELECT POWER(23,2),POWER(14,3)



-- PART_C : 

-- 1. Find out the square root of 36, 49 and 81
SELECT SQRT(36),SQRT(49),SQRT(81)

-- 2. Find out the square of 3, 9, and 12
SELECT POWER(3,2),POWER(9,2),POWER(12,2)

-- 3. Find out round value of 280.8952 for 2, 0 and -2 decimal points
SELECT ROUND(280.8952,2),ROUND(280.8952,0),ROUND(280.8952,-2)

-- 4. Find sine, cosine and tangent of 4.2014
SELECT SIN(4.2014),COS(4.2014),TAN(4.2014)

-- 5. Find sign of -55, 0 and 95.
SELECT SIGN(-55),SIGN(0),SIGN(95)