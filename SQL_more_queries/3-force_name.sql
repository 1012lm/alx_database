-- Script: 3-force_name.sql
-- Description: Creates the force_name table if it doesn't exist and inserts data

-- Create table force_name if it doesn't exist
CREATE TABLE IF NOT EXISTS `force_name` (
  `id` INT NOT NULL,
  `name` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`id`)
);

-- Insert data into the force_name table
INSERT IGNORE INTO `force_name` (`id`, `name`) VALUES
  (1, 'Holberton School'),
  (1, 'Python is cool'),
  (2, 'Holberton'),
  (3, 'School'),
  (4, 'C is fun');