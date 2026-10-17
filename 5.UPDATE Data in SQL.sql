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
