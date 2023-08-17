-- Script: 4-never_empty.sql
-- Description: Creates the id_not_null table

-- Create table id_not_null if it doesn't exist
CREATE TABLE IF NOT EXISTS `id_not_null` (
  `id` INT NOT NULL DEFAULT 1,
  `name` VARCHAR(256)
);