-- Script: 3-force_name.sql
-- Description: Creates the force_name table and inserts data

-- Drop the force_name table if it exists
DROP TABLE IF EXISTS `force_name`;

-- Create table force_name
CREATE TABLE `force_name` (
  `id` INT NOT NULL,
  `name` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Insert data into the force_name table
INSERT INTO `force_name` (`id`, `name`) VALUES
  (1, 'Holberton School'),
  (2, 'Python is cool'),
  (3, 'Holberton'),
  (4, 'School'),
  (5, 'C is fun');