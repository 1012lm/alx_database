-- Script: 4-first_table.sql
-- Description: Creates a table called first_table in the current database

-- Create the table if it doesn't exist
CREATE TABLE IF NOT EXISTS first_table (
  id INT,
  name VARCHAR(256)
);