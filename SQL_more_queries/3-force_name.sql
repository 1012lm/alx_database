-- Script: 3-force_name.sql
-- Description: Creates the table force_name with id and name columns

USE `hbtn_0d_2`;

-- Create table force_name if it doesn't exist
CREATE TABLE IF NOT EXISTS `force_name` (
  `id` INT,
  `name` VARCHAR(256) NOT NULL,
  PRIMARY KEY (`id`)
);