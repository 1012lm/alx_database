-- Script: 4-never_empty.sql
-- Description: Creates the table id_not_null with id and name columns

USE `hbtn_0d_2`;

-- Create table id_not_null if it doesn't exist
CREATE TABLE IF NOT EXISTS `id_not_null` (
  `id` INT DEFAULT 1,
  `name` VARCHAR(256)
);