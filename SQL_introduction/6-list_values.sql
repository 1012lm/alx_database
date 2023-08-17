-- Script: 6-list_values.sql
-- Description: Lists all rows of the table first_table

-- Set the database name and table name as variables
SET @dbname = 'hbtn_0c_0';
SET @tablename = 'first_table';

-- Retrieve all rows from the table
SELECT * FROM @dbname.@tablename;