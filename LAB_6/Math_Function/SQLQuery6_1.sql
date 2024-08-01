-- LAB_6 : ( MATH_FUNCTIONS )

-- PART-A :

-- 1. Display the result of 5 multiply by 30
SELECT 5*30 AS RESULT

-- 2. Find out the absolute value of -25, 25, -50 and 50
SELECT ABS(-25) AS ABS_NEG25,
       ABS(25) AS ABS_25,
       ABS(-50) AS ABS_NEG50,
       ABS(50) AS ABS_50

-- 3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2
SELECT CEILING(25.2) AS Ceil_25_2,
       CEILING(25.7) AS Ceil_25_7,
       CEILING(-25.2) AS Ceil_Neg_25_2


-- 4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2
SELECT FLOOR(25.2) AS Floor_25_2,
       FLOOR(25.7) AS Floor_25_7,
       FLOOR(-25.2) AS Floor_Neg_25_2

-- 5. Find out remainder of 5 divided 2 and 5 divided by 3
SELECT 5 % 2 AS Remainder_5_2,
       5 % 3 AS Remainder_5_3

-- 6. Find out value of 3 raised to 2nd power and 4 raised 3rd power
SELECT POWER(3, 2) AS Power_3_2,
       POWER(4, 3) AS Power_4_3

-- 7. Find out the square root of 25, 30 and 50
SELECT SQRT(25) AS Sqrt_25,
       SQRT(30) AS Sqrt_30,
       SQRT(50) AS Sqrt_50

-- 8. Find out the square of 5, 15, and 25
SELECT POWER(5, 2) AS Square_5,
       POWER(15, 2) AS Square_15,
       POWER(25, 2) AS Square_25

-- 9. Find out the value of PI
SELECT PI() AS PI_VALUE

-- 10. Find out round value of 157.732 for 2, 0 and -2 decimal points
SELECT ROUND(157.732, 2) AS Round_2,
       ROUND(157.732, 0) AS Round_0,
       ROUND(157.732, -2) AS Round_Neg_2

-- 11. Find out exponential value of 2 and 3
SELECT EXP(2) AS Exp_2,
       EXP(3) AS Exp_3

-- 12. Find out logarithm having base e of 10 and 2
SELECT LOG(10) AS Log_e_10,
       LOG(2) AS Log_e_2

-- 13. Find out logarithm having base b having value 10 of 5 and 100
SELECT LOG10(5) AS Log10_5,
       LOG10(100) AS Log10_100

-- 14. Find sine, cosine and tangent of 3.1415
SELECT SIN(3.1415) AS Sine_3_1415,
       COS(3.1415) AS Cosine_3_1415,
       TAN(3.1415) AS Tangent_3_1415

-- 15. Find sign of -25, 0 and 25
SELECT SIGN(-25) AS Sign_Neg25,
       SIGN(0) AS Sign_0,
       SIGN(25) AS Sign_25

-- 16. Generate random number using function
SELECT RAND() AS Random_Number



-- PART_B :

CREATE TABLE EMP_MASTER(
    EMP_NO INT,
    EMP_NAME VARCHAR(50),
    JOIN_DATE DATE,
    SALARY DECIMAL(10, 2),
    COMMISSION DECIMAL(10, 2),
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
SELECT EMP_NO, EMP_NAME, (SALARY + COMMISSION) AS Total_Compensation
FROM EMP_MASTER

-- 2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2
SELECT CEILING(55.2) AS Ceil_55_2,
       CEILING(35.7) AS Ceil_35_7,
       CEILING(-55.2) AS Ceil_Neg_55_2

-- 3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2
SELECT FLOOR(55.2) AS Floor_55_2,
       FLOOR(35.7) AS Floor_35_7,
       FLOOR(-55.2) AS Floor_Neg_55_2

-- 4. Find out remainder of 55 divided 2 and 55 divided by 3
SELECT 55 % 2 AS Remainder_55_2,
       55 % 3 AS Remainder_55_3

-- 5. Find out value of 23 raised to 2nd power and 14 raised 3rd power
SELECT POWER(23, 2) AS Power_23_2,
       POWER(14, 3) AS Power_14_3



-- PART_C : 

-- 1. Find out the square root of 36, 49 and 81
SELECT SQRT(36) AS Sqrt_36,
       SQRT(49) AS Sqrt_49,
       SQRT(81) AS Sqrt_81

-- 2. Find out the square of 3, 9, and 12
SELECT POWER(3, 2) AS Square_3,
       POWER(9, 2) AS Square_9,
       POWER(12, 2) AS Square_12

-- 3. Find out round value of 280.8952 for 2, 0 and -2 decimal points
SELECT ROUND(280.8952, 2) AS Round_2,
       ROUND(280.8952, 0) AS Round_0,
       ROUND(280.8952, -2) AS Round_Neg_2

-- 4. Find sine, cosine and tangent of 4.2014
SELECT SIN(4.2014) AS Sine_4_2014,
       COS(4.2014) AS Cosine_4_2014,
       TAN(4.2014) AS Tangent_4_2014

-- 5. Find sign of -55, 0 and 95.
SELECT SIGN(-55) AS Sign_Neg_55,
       SIGN(0) AS Sign_0,
       SIGN(95) AS Sign_95



SELECT ROUND(153.245,2,1)
SELECT ROUND(153.245,2)
SELECT ROUND(153.245,1)
SELECT ROUND(153.245,0)
SELECT ROUND(153.245,-2)