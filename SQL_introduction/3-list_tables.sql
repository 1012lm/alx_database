-- Script: 3-list_tables.sql
-- Description: Lists all tables of a specific database in MySQL

-- Set the database name as a variable
SET @dbname = 'mysql';

-- Retrieve the list of tables in the specified database
SELECT TABLE_NAME
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = @dbname;-- Script: main_0.sql
-- Description: Creates a new database with three tables and lists the tables

-- Create the new database
CREATE DATABASE IF NOT EXISTS hbtn_test_db_0;

-- Use the new database
USE hbtn_test_db_0;

-- Create three tables
CREATE TABLE IF NOT EXISTS holbteron_0 (
    id INT,
    name VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS holbteron_1 (
    id INT,
    name VARCHAR(256)
);

CREATE TABLE IF NOT EXISTS holbteron_2 (
    id INT,
    name VARCHAR(256)
);

-- List the tables in the database
SELECT TABLE_NAME
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'hbtn_test_db_0';