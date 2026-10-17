-- =====================================================
-- LESSON 7: UPDATE DATA IN SQL
-- Objective: Learn how to modify existing records
-- using the UPDATE statement.
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

-- =====================================================
-- Example 1: Update a Single Column
-- Change Rajesh's city from Mumbai to Kolkata
-- =====================================================

UPDATE users
SET city = 'Kolkata'
WHERE user_id = 1

-- Verify the update

SELECT * FROM users;

-- Retrieve all records from the users table
-- and display them in ascending order of user_id

SELECT *
FROM users
ORDER BY user_id;

-- =====================================================
-- Display specific columns from the users table
-- username : Shows the user's name
-- city     : Shows the user's city
-- Selecting only required columns improves readability
-- and returns less unnecessary data.
-- =====================================================
SELECT username, city FROM users;

-- Update Rajesh's age from 25 to 26
-- WHERE clause ensures only Rajesh's record is updated
UPDATE users
SET age = 26
WHERE username = 'Rajesh';

-- Verify the update
SELECT * FROM users;

-- Retrieve all records from the users table
-- and display them in ascending order of user_id

SELECT * FROM users ORDER BY user_id ASC;

-- Change Priya's city from Delhi to Mumbai
UPDATE users
SET city = 'Mumbai'
WHERE username = 'Priya'

-- Verify the update
SELECT * FROM users;

-- and display them in ascending order of user_id
SELECT * FROM users ORDER BY user_id ASC;

-- Increase Rajesh's age by 1 year
UPDATE users
SET age = age +1
WHERE username = 'Rajesh';

-- Update the city to Chennai for all users
-- whose age is greater than 30 years

UPDATE users
SET city = 'Chennai'
WHERE age>30;

-- Update the city to Chennai for all users
-- whose age is greater than or equal to 30 years

UPDATE users
SET city = 'Chennai'
WHERE age >= 30;

-- Update Priya's age to 31 and city to Kolkata
-- Multiple columns are updated in a single query
-- WHERE clause ensures only Priya's record is modified

UPDATE users
SET age = 	31,
	city = 'Kolkata'
WHERE username = 'Priya';

-- Increase the age by 1 year for all users
-- whose email address contains 'gmail.com'
UPDATE users
SET age = age +1 
WHERE email LIKE '%gmail.com'

-- UPDATE users              : Specifies the table to update
-- SET age = age + 1         : Increases the current age by 1
-- WHERE email LIKE          : Filters records based on email pattern
-- '%gmail.com'              : Selects emails ending with gmail.com

