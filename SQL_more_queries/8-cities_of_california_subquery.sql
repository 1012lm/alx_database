-- Script: 8-cities_of_california_subquery.sql
-- Description: Lists all cities of California

-- Find the state_id for California
SELECT id INTO @california_id FROM states WHERE name = 'California';

-- List all cities of California
SELECT * FROM cities WHERE state_id = @california_id ORDER BY id ASC;