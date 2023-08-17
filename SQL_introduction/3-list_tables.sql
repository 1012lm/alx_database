-- Script: main_0.sql
-- Description: Creates a new database with three tables and lists the tables

-- Create the database if it doesn't exist
CREATE DATABASE IF NOT EXISTS hbtn_test_db_0;

-- Switch to the newly created database
USE hbtn_test_db_0;

-- Create three tables
CREATE TABLE holbteron_0 (id INT);
CREATE TABLE holbteron_1 (id INT);
CREATE TABLE holbteron_2 (id INT);

-- List the tables in the database
SELECT TABLE_NAME AS Tables_in_hbtn_test_db_0
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'hbtn_test_db_0';