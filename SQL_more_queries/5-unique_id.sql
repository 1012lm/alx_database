-- Script: 5-unique_id.sql
-- Description: Creates the table unique_id with id and name columns

USE `hbtn_0d_2`;

-- Create table unique_id if it doesn't exist
CREATE TABLE IF NOT EXISTS `unique_id` (
  `id` INT DEFAULT 1,
  `name` VARCHAR(256),
  UNIQUE (`id`)
);