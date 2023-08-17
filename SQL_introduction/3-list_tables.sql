-- Script: main_1.sql
-- Description: Creates a new database without any tables

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_test_db_1;

-- Switch to the newly created database
USE hbtn_test_db_1;

-- List the tables in the database (should be empty)
SELECT 'No tables found' AS Tables_in_hbtn_test_db_1
FROM DUAL
WHERE NOT EXISTS (
  SELECT 1
  FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_SCHEMA = 'hbtn_test_db_1'
  LIMIT 1
);