/*
=================================================
DAY 2 : TYPES OF COMMANDS IN SQL
=================================================

Objective:
Learn the different types of SQL commands
used to define, manipulate, control, and
query data in databases.

=================================================
*/

-------------------------------------------------
-- SQL COMMAND TYPES
-------------------------------------------------

-- 1. DDL (Data Definition Language)
-- 2. DML (Data Manipulation Language)
-- 3. TCL (Transaction Control Language)
-- 4. DCL (Data Control Language)
-- 5. DQL (Data Query Language)


-------------------------------------------------
-- DDL (DATA DEFINITION LANGUAGE)
-------------------------------------------------

-- DDL commands are used to create,
-- modify and delete database objects.

-- CREATE
CREATE TABLE employees (
    id INT,
    name TEXT
);

-- ALTER
ALTER TABLE employees
ADD COLUMN age INT;

-- DROP
DROP TABLE employees;

-- TRUNCATE
TRUNCATE TABLE employees;


-------------------------------------------------
-- DML (DATA MANIPULATION LANGUAGE)
-------------------------------------------------

-- DML commands are used to
-- insert, update and delete data.

-- INSERT
INSERT INTO employees(id, name, age)
VALUES (1, 'John', 30);

-- UPDATE
UPDATE employees
SET age = 31
WHERE id = 1;

-- DELETE
DELETE FROM employees
WHERE id = 1;

-- SELECT
SELECT * FROM employees;


-------------------------------------------------
-- TCL (TRANSACTION CONTROL LANGUAGE)
-------------------------------------------------

-- TCL commands manage transactions
-- and maintain data consistency.

-- BEGIN
BEGIN;

-- COMMIT
COMMIT;

-- ROLLBACK
ROLLBACK;

-- SAVEPOINT
SAVEPOINT sp1;


-------------------------------------------------
-- DCL (DATA CONTROL LANGUAGE)
-------------------------------------------------

-- DCL commands control access
-- and permissions.

-- GRANT
GRANT SELECT, INSERT
ON employees
TO user1;

-- REVOKE
REVOKE INSERT
ON employees
FROM user1;


-------------------------------------------------
-- DQL (DATA QUERY LANGUAGE)
-------------------------------------------------

-- DQL is used to retrieve data.

SELECT name, age
FROM employees
WHERE age > 25;


-------------------------------------------------
-- SQL vs NoSQL
-------------------------------------------------

-- SQL Databases
-- Data stored in tables
-- Fixed schema
-- Strong ACID compliance

-- Examples:
-- PostgreSQL
-- MySQL
-- Oracle
-- SQL Server


-- NoSQL Databases
-- Flexible schema
-- Document or key-value storage
-- Horizontally scalable

-- Examples:
-- MongoDB
-- Cassandra
-- Redis
-- Couchbase


-------------------------------------------------
-- KEY LEARNINGS
-------------------------------------------------

-- DDL manages database objects.
-- DML manages table data.
-- TCL manages transactions.
-- DCL manages permissions.
-- DQL retrieves data.

-- Always verify data with SELECT
-- before UPDATE or DELETE operations.

-- Use COMMIT and ROLLBACK carefully.