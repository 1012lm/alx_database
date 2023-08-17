-- Script: 5-full_table.sql
-- Description: Prints the full description of the table first_table

-- Set the database name as a variable
SET @dbname = 'hbtn_0c_0';

-- Set the table name as a variable
SET @tablename = 'first_table';

-- Retrieve the table creation statement from the information_schema.TABLES view
SET @table_creation = (
    SELECT CONCAT('CREATE TABLE `', TABLE_NAME, '` (', GROUP_CONCAT(COLUMN_NAME, ' ', COLUMN_TYPE, COLUMN_NULLABLE, COLUMN_DEFAULT, SEPARATOR ','), ') ', TABLE_ENGINE, ' DEFAULT CHARSET=', TABLE_COLLATION) AS statement
    FROM information_schema.COLUMNS
    WHERE TABLE_SCHEMA = @dbname
    AND TABLE_NAME = @tablename
    GROUP BY TABLE_NAME, TABLE_ENGINE, TABLE_COLLATION
);

-- Print the full description of the table
SELECT CONCAT(@tablename, @table_creation) AS Description;