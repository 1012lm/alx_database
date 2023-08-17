-- Script: 5-full_table.sql
-- Description: Prints the full description of the table first_table from the hbtn_0c_0 database

-- Set the database name
USE hbtn_0c_0;

-- Get the table schema information
SELECT TABLE_NAME AS 'Table', CREATE_TABLE
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'hbtn_0c_0'
  AND TABLE_NAME = 'first_table';