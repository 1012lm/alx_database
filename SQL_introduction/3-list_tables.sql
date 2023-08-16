-- Script: 3-list_tables.sql
-- Description: Lists all tables of a specific database in the MySQL server

-- Set the database name as a variable
SET @dbname = 'hbtn_test_db_0';

-- Retrieve the list of tables in the specified database
SELECT TABLE_NAME
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = @dbname;