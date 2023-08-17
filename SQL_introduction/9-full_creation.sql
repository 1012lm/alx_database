-- Script: 9-full_creation.sql
-- Description: Creates the table second_table, adds new records, and displays all records

-- Set the database name as a variable
SET @dbname = 'hbtn_test_db_9';

-- Create table if it doesn't exist
CREATE TABLE IF NOT EXISTS second_table (
    id INT,
    name VARCHAR(256),
    score INT
);

-- Insert new records
INSERT INTO second_table (id, name, score)
VALUES (1, 'John', 10), (2, 'Alex', 3), (3, 'Bob', 14), (4, 'George', 8);

-- Display all records in the table
