-- Script: 3-force_name.sql
-- Description: Creates the force_name table if it doesn't exist and inserts data

-- Create table force_name if it doesn't exist
CREATE TABLE IF NOT EXISTS `force_name` (
  `id` INT NOT NULL,
  `name` VARCHAR(256),
  PRIMARY KEY (`id`)
);

-- Insert data into the force_name table
INSERT INTO `force_name` (`id`, `name`) VALUES
  (1, 'Holberton School'),
  (2, 'Python is cool'),
  (3, 'Holberton'),
  (4, 'School'),
  (5, 'C is fun');

-- Attempt an insert without a name
INSERT INTO `force_name` (`id`) VALUES (6);