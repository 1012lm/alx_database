-- Script: 5-full_table.sql
-- Description: Prints the full description of the table first_table

-- Set the database name and table name as variables
SET @dbname = 'hbtn_0c_0';
SET @tablename = 'first_table';

-- Retrieve the full table description
SELECT CONCAT('Table\tCreate Table\n', TABLE_NAME, ' ', CREATE_TABLE_STATEMENT)
FROM (
  SELECT TABLE_NAME, CONCAT('CREATE TABLE `', TABLE_NAME, '` (\n', GROUP_CONCAT(COLUMN_DEFINITION ORDER BY ORDINAL_POSITION SEPARATOR ',\n'), '\n) ENGINE=', ENGINE, ' DEFAULT CHARSET=', CHARSET) AS CREATE_TABLE_STATEMENT
  FROM (
    SELECT
      TABLE_NAME,
      CONCAT('`', COLUMN_NAME, '`', ' ', COLUMN_TYPE, IF(IS_NULLABLE = 'NO', ' NOT NULL', ''), IF(COLUMN_DEFAULT IS NOT NULL, CONCAT(' DEFAULT ', QUOTE(COLUMN_DEFAULT)), ''), IF(EXTRA = 'auto_increment', ' AUTO_INCREMENT', '')) AS COLUMN_DEFINITION,
      ENGINE,
      CHARSET,
      ORDINAL_POSITION
    FROM information_schema.COLUMNS
    WHERE TABLE_SCHEMA = @dbname AND TABLE_NAME = @tablename
  ) AS T
  GROUP BY TABLE_NAME
) AS T;