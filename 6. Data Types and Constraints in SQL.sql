-- ==========================================
-- LESSON 6: Data Types and Constraints
-- ==========================================
🎯 Objective
---To understand how SQL Data Types define the type of data stored in a table and how Constraints enforce rules to ensure data accuracy, consistency, and integrity.
📖 Explanation
--In SQL, every column in a table must have a Data Type. The data type determines what kind of information can be stored in that column, such as numbers, text, dates, or decimal values.
--Constraints are rules applied to columns that restrict the type of data that can be entered. They help maintain data quality and prevent invalid or duplicate data from being stored in the database.
--Together, Data Types and Constraints ensure that the database stores accurate, reliable, and meaningful information.

📝 Key Points
SQL
INT --> Stores whole numbers
VARCHAR --> Stores text values
CHAR --> Stores fixed-length text
DATE --> Stores date values
TIME --> Stores time values
TIMESTAMP --> Stores date and time
NUMERIC --> Stores decimal values
BOOLEAN --> Stores TRUE/FALSE values
 
PRIMARY KEY --> Unique identifier
NOT NULL --> Value cannot be empty
UNIQUE --> No duplicate values
CHECK --> Validates a condition
DEFAULT --> Assigns default value
FOREIGN KEY --> Creates relationship between tables
    
-- Objective:
-- Learn how to use Data Types and Constraints
-- while creating a table in PostgreSQL.

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INTEGER CHECK (age >= 18),
    reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Inserting data into table
INSERT INTO users
(user_id, name, email, age)
VALUES
(1, 'John Doe', 'john.doe@example.com', 25);

-- Inserting data into table2 
INSERT INTO users
(user_id, name, email, age)
VALUES
(1, 'John Doe', 'john.doe@example.com', 25);

SELECT * FROM users;

-------------------------------------------
-------------------------------------------
-- LESSON: PRIMARY KEY CONSTRAINT

-- PRIMARY KEY ensures that each record has a unique value.
-- Duplicate values and NULL values are not allowed.

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age INTEGER CHECK (age >= 18)
);

-- First INSERT: Successful because user_id = 1 does not exist.

INSERT INTO users (user_id, name, email, age)
VALUES (1, 'John Doe', 'john.doe@example.com', 25);

-- Second INSERT: Failed because user_id = 1 already exists.
-- PRIMARY KEY constraint prevents duplicate values.

INSERT INTO users (user_id, name, email, age)
VALUES (1, 'John Doe', 'john.doe@example.com', 25);

-- Error:
-- ERROR: duplicate key value violates unique constraint "users_pkey"
-- Detail: Key (user_id)=(1) already exists.

-- Resolution:
-- Use a different user_id value or remove the existing record before inserting.

INSERT INTO users (user_id, name, email, age)
VALUES (2, 'Jane Smith', 'jane.smith@example.com', 30);

-- Key Learning:
-- PRIMARY KEY = UNIQUE + NOT NULL
-- Duplicate primary key values are not allowed.
-- Always verify existing data before inserting records.

SELECT * FROM users;

-- PRIMARY KEY uniquely identifies each row.
-- Duplicate values are not allowed.
-- Error occurs when inserting an existing primary key value.
-- Fix: Use a new unique ID or delete the existing record.
