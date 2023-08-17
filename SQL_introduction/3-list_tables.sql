-- Script: main_1.sql
-- Description: Creates a new database without tables and lists the tables

-- Create the new database
CREATE DATABASE IF NOT EXISTS hbtn_test_db_1;

-- Use the new database
USE hbtn_test_db_1;


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
SHOW TABLES;



-- List the tables in the database
SELECT TABLE_NAME
FROM information_schema.TABLES
WHERE TABLE_SCHEMA = 'hbtn_test_db_1';