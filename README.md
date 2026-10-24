<img width="1411" height="2268" alt="image" src="https://github.com/user-attachments/assets/3987de11-fab1-4eeb-aed6-4e5671ede84f" /># 🚀 PostgreSQL Learning Journey
Welcome to my PostgreSQL learning repository. This repository contains hands-on SQL practice, queries, and concepts that I am learning step by step using PostgreSQL and pgAdmin.

📚 Lessons Completed
✅ Lesson 03 - Create Database & Table
Creating databases
Creating tables
Defining columns
Primary Key introduction
📄 File: 1.Create Database & Table.sql

✅ Lesson 04 - Insert Data in Table
INSERT statement
Adding single and multiple records
Data validation
📄 File: 2. Insert Data in Table.sql

✅ Lesson 05 - Delete Rows & Columns
DELETE statement
WHERE clause
DROP COLUMN
DROP TABLE
ROLLBACK and COMMIT concepts
📄 File: 3. Delete Rows & Columns.sql

✅ Lesson 06 - Data Types and Constraints in SQL
INT
VARCHAR
DATE
NUMERIC
PRIMARY KEY
NOT NULL
UNIQUE
CHECK
DEFAULT
📄 File: 4.Data Types and Constraints in SQL.sql

🛠️ Tools Used
PostgreSQL 18
pgAdmin 4
GitHub
📈 Learning Progress
Lesson	Topic	Status
01	Create Database & Table	✅ Completed
02	Insert Data	✅ Completed
03	Delete Rows & Columns	✅ Completed
04	Data Types & Constraints	✅ Completed
05	SELECT Statement	⏳ Coming Soon
06	WHERE Clause	⏳ Coming Soon
07	ORDER BY	⏳ Coming Soon
08	GROUP BY	⏳ Coming Soon
09	JOINS	⏳ Coming Soon
👨‍💻 Author
Asif Iqbal

Learning PostgreSQL step by step and building a strong SQL portfolio on GitHub.

⭐ If you're also learning SQL, feel free to explore this repository.

✅ Lesson 07 - UPDATE Data in SQL

🎯 Objective
Learn how to modify existing records in a table using the UPDATE statement.

SQL Example
-- Update Rajesh's city from Mumbai to Kolkata

UPDATE users
SET city = 'Kolkata'
WHERE user_id = 1;

-- View all records after the update

SELECT *
FROM users
ORDER BY user_id;
Key Learning
UPDATE modifies existing records in a table.
SET specifies the new value for a column.
WHERE identifies which row(s) should be updated.
ORDER BY sorts the result in a specific order.
Omitting the WHERE clause updates all rows in the table.
Memory Statement
-- UPDATE = Modify Existing Data
-- SET = New Value
-- WHERE = Specific Row Selection
-- ORDER BY = Sort Results

UPDATE + SET + WHERE = Safe Data Modification
Summary
The UPDATE statement is used

