-- Script: 9-full_creation.sql
-- Description: Creates the table second_table and inserts multiple rows

-- Set the database name as a variable
SET @dbname = 'hbtn_0c_0';

-- Create table if it doesn't exist
CREATE TABLE IF NOT EXISTS @dbname.second_table (
    id INT,
    name VARCHAR(256),
    score INT
);

-- Insert multiple rows
INSERT INTO @dbname.second_table (id, name, score)
VALUES (1, 'John', 10), (2, 'Alex', 3), (3, 'Bob', 14), (4, 'George', 8);

-- Dummy query to display success message
