# 🚀 PostgreSQL Learning Journey

### A Hands-On SQL Learning Portfolio by Asif Iqbal

Welcome to my PostgreSQL learning repository!

This repository documents my step-by-step learning journey in SQL and PostgreSQL through practical exercises, SQL scripts, database operations, and real-world examples using **PostgreSQL 18 and pgAdmin 4**.

My goal is to build a strong foundation in database management, SQL querying, data manipulation, and analytical problem-solving as part of my journey toward Data Engineering.

---

# 📚 Lessons & Practical Exercises

## ✅ Lesson 01 — Introduction & Installation of SQL

### 🎯 Objective
Understand SQL, relational databases, PostgreSQL, and the tools required to write and execute SQL queries.

### 📖 Concepts Covered
- Introduction to SQL (Structured Query Language)
- Understanding relational databases
- Introduction to tables, rows, and columns
- Overview of PostgreSQL
- Installing PostgreSQL
- Installing and configuring pgAdmin 4
- Connecting to a PostgreSQL server
- Understanding the Query Tool

### 💡 Key Learning
- SQL is used to create, retrieve, modify, and manage data in relational databases.
- PostgreSQL is an open-source relational database management system.
- pgAdmin provides a graphical interface for working with PostgreSQL.
- SQL queries can be written and executed through the pgAdmin Query Tool.

### 🧠 Memory Statement

```sql
-- SQL         = Query Language
-- PostgreSQL  = Database Management System
-- pgAdmin 4   = Graphical Database Management Tool
```

### 📝 Summary
This lesson establishes the foundation for working with PostgreSQL and prepares the environment for hands-on SQL practice.

📄 **File:** `1. Introduction-and-Installation-of-SQL.sql`

---

## ✅ Lesson 02 — Types of Commands in SQL

### 🎯 Objective
Understand the major categories of SQL commands and their purposes in database management.

### 📖 Concepts Covered

| Category | Full Form | Purpose | Examples |
|---|---|---|---|
| DDL | Data Definition Language | Defines database structures | `CREATE`, `ALTER`, `DROP`, `TRUNCATE` |
| DML | Data Manipulation Language | Inserts and modifies data | `INSERT`, `UPDATE`, `DELETE` |
| DQL | Data Query Language | Retrieves data | `SELECT` |
| DCL | Data Control Language | Manages permissions | `GRANT`, `REVOKE` |
| TCL | Transaction Control Language | Manages transactions | `COMMIT`, `ROLLBACK`, `SAVEPOINT` |

### 💻 SQL Examples

**1. DDL — Create a table**

```sql
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100)
);
```

**2. DML — Insert a record**

```sql
INSERT INTO users (user_id, name)
VALUES (1, 'Rajesh');
```

**3. DQL — Retrieve records**

```sql
SELECT *
FROM users;
```

**4. DML — Update a record**

```sql
UPDATE users
SET name = 'Rahul'
WHERE user_id = 1;
```

**5. TCL — Commit a transaction**

```sql
COMMIT;
```

### 💡 Key Learning
- DDL defines database structures.
- DML changes the data stored in tables.
- DQL retrieves data for inspection and analysis.
- DCL controls database access and permissions.
- TCL manages transaction boundaries and changes.

*Note: DQL is commonly taught as a separate category, although some SQL classifications group `SELECT` under DML.*

### 🧠 Memory Statement

```sql
-- DDL = Define
-- DML = Modify
-- DQL = Query
-- DCL = Control Access
-- TCL = Manage Transactions
```

### 📝 Summary
Understanding SQL command categories helps identify the correct command for each database operation.

📄 **File:** `2. Types-of-Commands-in-SQL.sql`

---

## ✅ Lesson 03 — Create Database & Table

### 🎯 Objective
Learn how to create a database and define its structure using SQL.

### 📖 Concepts Covered
- Creating a database
- Creating tables
- Defining columns
- Selecting appropriate data types
- Introduction to Primary Keys

### 💻 SQL Example

```sql
-- Create a database
CREATE DATABASE learning_db;

-- Create a table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(100)
);
```

### 💡 Key Learning
- `CREATE DATABASE` creates a database.
- `CREATE TABLE` defines a table structure.
- Columns define the attributes stored in a table.
- A Primary Key uniquely identifies each row and cannot contain NULL values.

### 🧠 Memory Statement

```sql
-- CREATE DATABASE = Create a Database
-- CREATE TABLE    = Define Table Structure
-- PRIMARY KEY     = Unique Row Identification
```

### 📝 Summary
Database and table creation are the starting points for organizing and storing structured data in PostgreSQL.

📄 **File:** `3. Creating-Database-and-Tablein-SQL.sql`

---

## ✅ Lesson 04 — Insert Data into a Table

### 🎯 Objective
Learn how to insert single and multiple records into an existing table.

### 📖 Concepts Covered
- `INSERT INTO` statement
- Inserting a single record
- Inserting multiple records
- Specifying column names
- Validating inserted data

### 💻 SQL Examples

**1. Insert a single record**

```sql
INSERT INTO users (user_id, name, city)
VALUES (1, 'Rajesh', 'Mumbai');
```

**2. Insert multiple records**

```sql
INSERT INTO users (user_id, name, city)
VALUES
    (2, 'Priya', 'Delhi'),
    (3, 'Amit', 'Pune'),
    (4, 'Neha', 'Kolkata');
```

**3. Verify inserted records**

```sql
SELECT *
FROM users;
```

### 💡 Key Learning
- `INSERT INTO` adds records to a table.
- `VALUES` specifies the data being inserted.
- Multiple records can be inserted in one statement.
- Column names and values must correspond correctly.
- Constraints can reject invalid data.

### 🧠 Memory Statement

```sql
-- INSERT INTO = Target Table
-- VALUES      = Data to Insert
-- SELECT      = Verify the Records
```

### 📝 Summary
The `INSERT` statement populates database tables with data that can later be queried, updated, and analyzed.

📄 **File:** `4. Inserting-data-in-Table-in-SQL.sql`

---

## ✅ Lesson 05 — Delete Rows & Columns in SQL

### 🎯 Objective
Understand how to delete records, remove columns, drop tables, and manage transactions.

### 📖 Concepts Covered
- `DELETE` statement
- `WHERE` clause
- `ALTER TABLE ... DROP COLUMN`
- `DROP TABLE`
- Introduction to `COMMIT`
- Introduction to `ROLLBACK`

### 💻 SQL Examples

**1. Delete a specific record**

```sql
DELETE FROM users
WHERE user_id = 1;
```

**2. Remove a column**

```sql
ALTER TABLE users
DROP COLUMN city;
```

**3. Remove a table**

```sql
DROP TABLE users;
```

**4. Transaction example**

```sql
BEGIN;

DELETE FROM users
WHERE user_id = 2;

-- Undo the deletion
ROLLBACK;
```

### 💡 Key Learning
- `DELETE` removes rows from a table.
- `WHERE` identifies the records to delete.
- `DROP COLUMN` removes a column from a table.
- `DROP TABLE` removes the table structure and its data.
- `COMMIT` makes transaction changes permanent.
- `ROLLBACK` can undo uncommitted transactional changes.

### ⚠️ Important
Always verify the target of a destructive operation before executing it. Without a `WHERE` clause, `DELETE` removes all rows from the table. In PostgreSQL, `ROLLBACK` can undo transactional changes before they are committed, provided the operations support transactional rollback.

### 🧠 Memory Statement

```sql
-- DELETE      = Remove Rows
-- DROP COLUMN = Remove a Column
-- DROP TABLE  = Remove a Table
-- COMMIT      = Finalize Transaction
-- ROLLBACK    = Undo Uncommitted Changes
```

### 📝 Summary
This lesson introduces data deletion, schema removal, and transaction fundamentals for safer database management.

📄 **File:** `5. Deleting-rows-and-column-in-SQL.sql`

---

## ✅ Lesson 06 — Data Types & Constraints in SQL

### 🎯 Objective
Learn how data types define stored values and how constraints maintain data integrity.

### 📖 Concepts Covered

| Concept | Purpose |
|---|---|
| `INT` | Stores integer values |
| `VARCHAR` | Stores variable-length text |
| `DATE` | Stores calendar dates |
| `NUMERIC` | Stores exact numeric values |
| `PRIMARY KEY` | Uniquely identifies rows |
| `NOT NULL` | Prevents NULL values |
| `UNIQUE` | Prevents duplicate values within the constrained key |
| `CHECK` | Enforces a specified condition |
| `DEFAULT` | Provides a default value when applicable |

### 💻 SQL Example

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE,
    age INT CHECK (age >= 18),
    joining_date DATE DEFAULT CURRENT_DATE,
    salary NUMERIC(10, 2)
);
```

### 💡 Key Learning
- Data types determine what kind of values a column can store.
- Constraints enforce rules on the data.
- Primary Keys uniquely identify records.
- `NOT NULL` and `CHECK` help prevent invalid data.
- `DEFAULT` supplies a value when one is not explicitly provided.

### 🧠 Memory Statement

```sql
-- Data Types = Define What Can Be Stored
-- Constraints = Define What Is Allowed
```

### 📝 Summary
Correct data types and constraints improve data consistency, reliability, and integrity.

📄 **File:** `6. Data-types-and-Constrains-in-SQL.sql`

---

## ✅ Lesson 07 — UPDATE Data in SQL

### 🎯 Objective
Learn how to modify existing records using the `UPDATE` statement.

### 📖 Concepts Covered
- `UPDATE` statement
- `SET` clause
- `WHERE` clause
- Updating specific records
- Verifying updated data
- Understanding the risk of updating all rows

### 💻 SQL Example

```sql
-- Update Rajesh's city from Mumbai to Kolkata

UPDATE users
SET city = 'Kolkata'
WHERE user_id = 1;

-- View the records after the update

SELECT *
FROM users
ORDER BY user_id;
```

### 💡 Key Learning
- `UPDATE` modifies existing records.
- `SET` specifies the new column values.
- `WHERE` identifies the rows to update.
- `ORDER BY` sorts the query results.
- Omitting `WHERE` updates every row in the table.

### 🧠 Memory Statement

```sql
-- UPDATE = Modify Existing Data
-- SET    = Assign New Values
-- WHERE  = Identify Target Rows
-- ORDER BY = Sort Query Results
```

**UPDATE + SET + WHERE = Targeted Data Modification**

### ⚠️ Best Practice
Before running an update, use a `SELECT` statement with the same `WHERE` condition to confirm which rows will be affected.

```sql
SELECT *
FROM users
WHERE user_id = 1;
```

### 📝 Summary
The `UPDATE` statement allows existing data to be modified without recreating the table or inserting duplicate records.

📄 **File:** `7. UPDATE-Data-in-SQL.sql`

---

## ✅ Lesson 08 — Update Data Using the pgAdmin Toolbar

### 🎯 Objective
Learn how to edit, save, add, copy, delete, and export table records using the pgAdmin Data Output interface.

### 📖 Toolbar Activities

| Feature | Purpose |
|---|---|
| ✏️ Edit Data | Modify existing values in the editable grid |
| 💾 Save Changes | Save supported changes to the database |
| ➕ Add Row | Insert a new record |
| 📄 Copy Row | Copy selected row data |
| 📋 Paste Row | Paste copied data where supported |
| 🗑️ Delete Row | Mark selected records for deletion |
| ⬇️ Download Data | Export query results, including CSV where supported |
| 📈 Data Visualization | Explore query results graphically where available |
| 🧾 SQL Button | Inspect SQL associated with the current query or operation where supported |

### 🧪 Practical Activity

**Scenario:** Update Rajesh's age from 28 to 29 using the pgAdmin Data Output grid.

**Steps**
1. Open pgAdmin 4 and connect to the PostgreSQL server.
2. Open the relevant database.
3. Open the Query Tool or the table's View/Edit Data interface.
4. Locate Rajesh's record.
5. Edit the `age` value from `28` to `29` in the editable grid.
6. Save the changes using the appropriate toolbar control.
7. Run a `SELECT` query to verify the result.

### 💻 Equivalent SQL

```sql
UPDATE users
SET age = 29
WHERE user_id = 1;
```

### 💡 Key Learning
- pgAdmin offers a graphical alternative to writing certain data modification statements.
- The editable grid supports convenient record-level changes when the result set is editable.
- Saving changes applies supported modifications to the database.
- SQL remains essential for repeatable, precise, and scalable data operations.

### ⚠️ Important
Editing and saving depend on the query result being editable and on having the necessary database permissions. The grid's available features may vary by context.

### 📝 Summary
This lesson demonstrates how graphical database tools and SQL statements can be used together to manage and verify records efficiently.

📄 **File:** `8. UPDATE-Using-Toolbar-in-SQL.sql`

---

# 🔜 Upcoming Lessons

The following topics are planned for future practice.

| No. | Topic | Status |
|---:|---|---|
| 09 | Query Toolbar | ⏳ Planned |
| 10 | ALTER COLUMN & Data Types | ⏳ Planned |
| 11 | Assignment with Solution | ⏳ Planned |
| 12 | Import CSV File — Method 1 | ⏳ Planned |
| 13 | Import CSV File — Direct Method | ⏳ Planned |
| 14 | Types of Operators | ⏳ Planned |
| 15 | Comparison Operators | ⏳ Planned |
| 16 | Logical Operators | ⏳ Planned |
| 17 | BETWEEN, LIKE & IN Operators | ⏳ Planned |
| 18 | Other Operators | ⏳ Planned |
| 19 | Set Operators | ⏳ Planned |
| 20 | SQL Functions | ⏳ Planned |
| 21 | String Functions | ⏳ Planned |
| 22 | Date & Time Functions | ⏳ Planned |
| 23 | Date & Time Functions — Part 2 | ⏳ Planned |
| 24 | Conditional Functions | ⏳ Planned |
| 25 | CASE Assignment | ⏳ Planned |
| 26 | COALESCE Function | ⏳ Planned |
| 27 | Window Functions | ⏳ Planned |
| 28 | Joins in SQL | ⏳ Planned |
| 29 | Advanced Joins | ⏳ Planned |
| 30 | SQL Project | ⏳ Planned |

---

# 🛠️ Tools & Technologies

- **PostgreSQL 18** — Relational database management
- **pgAdmin 4** — Database administration and query execution
- **SQL** — Database definition, manipulation, and querying
- **Git** — Version control
- **GitHub** — Source code hosting and portfolio documentation

---

# 👨‍💻 About the Author

**Asif Iqbal**

I am building my SQL and PostgreSQL expertise through structured learning, practical exercises, and consistent documentation.

This repository represents my progression from fundamental SQL concepts to advanced querying, data transformation, relational analysis, and practical database projects.

My long-term objective is to strengthen my technical capabilities in **SQL, database technologies, and Data Engineering**.

---

# ⭐ Follow My Learning Journey

If you're learning SQL or PostgreSQL, feel free to explore the scripts, practice the examples, and follow my progress.

**Learn → Practice → Validate → Build → Improve**

⭐ If you find this repository useful, consider giving it a star!

