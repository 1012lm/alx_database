-- Script: 9-full_creation.sql
-- Description: Creates the table second_table and inserts multiple rows

-- Create table if it doesn't exist
CREATE TABLE IF NOT EXISTS hbtn_0c_0.second_table (
    id INT,
    name VARCHAR(256),
    score INT
);

-- Insert multiple rows
INSERT IGNORE INTO hbtn_0c_0.second_table (id, name, score) VALUES (1, 'John', 10);
INSERT IGNORE INTO hbtn_0c_0.second_table (id, name, score) VALUES (2, 'Alex', 3);
INSERT IGNORE INTO hbtn_0c_0.second_table (id, name, score) VALUES (3, 'Bob', 14);
INSERT IGNORE INTO hbtn_0c_0.second_table (id, name, score) VALUES (4, 'George', 8);

-- Display all rows
SELECT * FROM hbtn_0c_0.second_table;