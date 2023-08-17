-- Script: 3-list_tables.sql
-- Description: Lists all tables in a specified database

SELECT TABLE_NAME AS Tables_in_database
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = '<database_name>';