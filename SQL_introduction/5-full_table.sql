-- Script: 5-full_table.sql
-- Description: Prints the full description of the table first_table

-- Set the database name as a variable
SET @dbname = 'hbtn_0c_0';

-- Set the table name as a variable
SET @tablename = 'first_table';

-- Retrieve the table creation statement from the information_schema.TABLES view
SET @table_creation = (
    SELECT CONCAT('CREATE TABLE `', TABLE_NAME, '` (\n', GROUP_CONCAT(COLUMN_NAME, ' ', COLUMN_TYPE, COLUMN_NULLABLE, COLUMN_DEFAULT SEPARATOR ',\n'), '\n) ENGINE=', TABLE_ENGINE, ' DEFAULT CHARSET=', CHARACTER_SET_NAME)
    FROM information_schema.COLUMNS
    WHERE TABLE_SCHEMA = @dbname
    AND TABLE_NAME = @tablename
    GROUP BY TABLE_NAME, TABLE_ENGINE, CHARACTER_SET_NAME
);

-- Print the full description of the table
SELECT CONCAT(@tablename, '\n', @table_creation) AS Description;