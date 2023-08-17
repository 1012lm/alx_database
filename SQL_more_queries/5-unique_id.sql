-- Script: 5-unique_id.sql
-- Description: Creates the unique_id table

-- Create table unique_id if it doesn't exist
CREATE TABLE IF NOT EXISTS `unique_id` (
  `id` INT NOT NULL DEFAULT 1,
  `name` VARCHAR(256),
  UNIQUE KEY `id` (`id`)
);