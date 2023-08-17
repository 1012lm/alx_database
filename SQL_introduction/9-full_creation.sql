-- Script: 9-full_creation.sql
-- Description: Creates the table second_table and inserts multiple rows

-- Check if table exists
SELECT COUNT(*) FROM information_schema.tables WHERE table_schema = 'hbtn_0c_0' AND table_name = 'second_table';

-- Create table if it doesn't exist
CREATE TABLE IF NOT EXISTS hbtn_0c_0.second_table (
    id INT,
    name VARCHAR(256),
    score INT
);

-- Insert multiple rows
INSERT INTO hbtn_0c_0.second_table (id, name, score) VALUES (1, 'John', 10);
INSERT INTO hbtn_0c_0.second_table (id, name, score) VALUES (2, 'Alex', 3);
INSERT INTO hbtn_0c_0.second_table (id, name, score) VALUES (3, 'Bob', 14);
INSERT INTO hbtn_0c_0.second_table (id, name, score) VALUES (4, 'George', 8);

-- Display all rows
SELECT * FROM hbtn_0c_0.second_table;