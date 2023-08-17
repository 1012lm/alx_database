-- Script: 5-full_table.sql
-- Description: Prints the full description of the table first_table

-- Set the database name as a variable
SET @dbname = 'hbtn_0c_0';

-- Retrieve the full table description
SELECT CONCAT('Table\tCreate Table\n', TABLE_NAME, ' ', CREATE_TABLE)
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = @dbname
AND TABLE_NAME = 'first_table';