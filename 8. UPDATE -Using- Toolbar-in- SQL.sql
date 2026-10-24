-- =====================================================
-- LESSON 8: UPDATE DATA USING QUERY TOOL
-- Objective: Learn how to update existing records
-- in PostgreSQL using the Query Tool and UPDATE statement.
-- =====================================================

DROP TABLE IF EXISTS users;
-- Create the users table

CREATE TABLE IF NOT EXISTS users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    age INT,
    city VARCHAR(50)
);

-- Insert sample records into the users table

INSERT INTO users (username, email, age, city) VALUES
('Rajesh', 'rajesh@gmail.com', 25, 'Mumbai'),
('Priya', 'priya@yahoo.com', 30, 'Delhi'),
('Ankit', 'ankit@gmail.com', 28, 'Bangalore'),
('Sneha', 'sneha@hotmail.com', 35, 'Pune'),
('Vikram', 'vikram@gmail.com', 22, 'Hyderabad');

-- View all records before updating

SELECT * FROM users;

-- Retrieve all records from the users table
-- and display them in ascending order of user_id

SELECT * FROM users ORDER BY user_id ASC;

-- TOOLBAR BUTTON: ➕ Add New Row
-- Used to insert a new record into the users table.
-- Click the Add Row button and enter new user details.

Username : Rahul
Email    : rahul@gmail.com
Age      : 30
City     : Delhi

-- TOOLBAR BUTTON: 📄 Copy Row
-- Used to copy selected row details.
-- Select Rajesh record and click Copy.

-- TOOLBAR BUTTON: 📋 Paste Row
-- Used to paste copied data into a new row.
-- Paste copied record and modify values if required.

-- TOOLBAR BUTTON: 🗑️ Delete Row
-- Used to delete selected records.
-- Select the required row and click Delete.

-- Delete Rahul record from users table
DELETE FROM users
WHERE username = 'Rahul';

--💾 Toolbar Symbol: Save Data Changes
--Purpose
--Save all modifications made through Data Output.
--Activity 1
Update Rajesh Age

-- TOOLBAR BUTTON: 💾 Save Data Changes
-- Updated Rajesh age from 28 to 29.
-- Save button commits changes to database.

UPDATE users
SET age = 29
WHERE user_id = 1;

-- Activity 2
Update Priya City

-- Updated Priya city from Kolkata to Delhi.
-- Save all modifications after editing.

UPDATE users
SET city = 'Delhi'
WHERE user_id = 2;

--Activity 3
Update Ankit City

-- Updated Ankit city from Bangalore to Pune.
-- Changes saved using toolbar button.

UPDATE users
SET city = 'Pune'
WHERE user_id = 3;

--Activity 4
Update Vikram Age

-- Updated Vikram age from 23 to 24.
-- Changes committed using Save button.

UPDATE users
SET age = 24
WHERE user_id = 5;

--Activity 5
Update Ajay City

-- Updated Ajay city from Mumbai to Hyderabad.
-- Saved changes from Data Output toolbar.

UPDATE users
SET city = 'Hyderabad'
WHERE user_id = 6;

--⬇️ Toolbar Symbol: Download Data
--Purpose
Export table data.

-- TOOLBAR BUTTON: ⬇️ Download Data
-- Export users table data into CSV format.
-- Used for reporting and backup purposes.

--File Name
--Plain Text
users_data.csv

--📈 Toolbar Symbol: Data Visualization
--Purpose
View graphical representation of result data.

-- TOOLBAR BUTTON: 📈 Data Visualization
-- Used to visualize query results.
-- Helpful for analyzing age and city distribution.

SELECT username, age
FROM users;

--✏️ Toolbar Symbol: Edit Data
--Purpose
Modify values directly in Data Output grid.

-- TOOLBAR BUTTON: ✏️ Edit Data
-- Double-click any cell to modify data.
-- Click Save Data Changes after editing.

--Key Learning
-- Toolbar allows records to be updated without writing UPDATE statements.
-- Always click 💾 Save Data Changes after editing.
-- Verify records using SELECT query.
-- Keep Primary Key values unchanged unless required.