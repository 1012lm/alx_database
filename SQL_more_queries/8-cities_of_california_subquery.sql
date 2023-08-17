-- Script: main_0_0.sql
-- Description: Lists all cities of California

-- Find the state_id for California
SELECT id INTO @california_id FROM states WHERE name = 'California';

-- List all cities of California
SELECT id, name FROM cities WHERE state_id = @california_id ORDER BY id ASC;