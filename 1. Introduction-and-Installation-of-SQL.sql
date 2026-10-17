/*
====================================================
LESSON 1 : TYPES OF OPERATORS IN SQL
====================================================

Objective:
Learn how SQL operators are used to perform
calculations, comparisons, and logical operations
on data.
====================================================
*/

----------------------------------------------------
-- ARITHMETIC OPERATORS
----------------------------------------------------

-- Addition
SELECT 10 + 5 AS addition_result;

-- Subtraction
SELECT 10 - 5 AS subtraction_result;

-- Multiplication
SELECT 10 * 5 AS multiplication_result;

-- Division
SELECT 10 / 5 AS division_result;

-- Modulus (Remainder)
SELECT 10 % 3 AS modulus_result;


----------------------------------------------------
-- TASK 1: CALCULATE EMPLOYEE BONUS
----------------------------------------------------

-- Calculate a 10% bonus for each employee

SELECT name,
       salary,
       (salary * 0.10) AS bonus
FROM employee2;


----------------------------------------------------
-- EXPLANATION
----------------------------------------------------

-- SELECT name, salary
-- Retrieves employee name and salary.

-- salary * 0.10
-- Calculates 10% bonus.

-- AS bonus
-- Gives a custom name to the calculated column.

-- FROM employee2
-- Fetches data from employee2 table.


----------------------------------------------------
-- TASK 2: CALCULATE ANNUAL SALARY
----------------------------------------------------

SELECT name,
       salary,
       (salary * 12) AS annual_salary
FROM employee2;


----------------------------------------------------
-- TASK 3: CALCULATE SALARY INCREMENT
----------------------------------------------------

SELECT name,
       salary,
       (salary * 0.05) AS increment_amount
FROM employee2;


----------------------------------------------------
-- TASK 4: NEW SALARY AFTER 5% INCREMENT
----------------------------------------------------

SELECT name,
       salary,
       (salary * 1.05) AS new_salary
FROM employee2;


----------------------------------------------------
-- TASK 5: ALTERNATIVE METHOD FOR NEW SALARY
----------------------------------------------------

SELECT name,
       salary,
       (salary + salary * 0.05) AS new_salary
FROM employee2;


----------------------------------------------------
-- KEY POINTS TO REMEMBER
----------------------------------------------------

-- +  : Addition
-- -  : Subtraction
-- *  : Multiplication
-- /  : Division
-- %  : Modulus (Remainder)

-- AS is used to provide aliases.

-- Calculated columns are temporary.

-- Operators help perform calculations
-- directly within SQL queries.