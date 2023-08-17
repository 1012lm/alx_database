-- Script: 5-full_table.sql
-- Description: Prints the full description of the table first_table

-- Set the database name as a variable
SET @dbname = 'hbtn_0c_0';

-- Set the table name as a variable
SET @tablename = 'first_table';

-- Retrieve the table creation statement from the information_schema.TABLES view
SET @table_creation = (
    SELECT CREATE_TABLE
    FROM information_schema.TABLES
    WHERE TABLE_SCHEMA = @dbname
    AND TABLE_NAME = @tablename
);

-- Print the full description of the table
SELECT CONCAT('Table   Create Table\n', @tablename, ' ', @table_creation) AS Description;