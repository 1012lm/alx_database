-- Script: 8-cities_of_california_subquery.sql
-- Description: Lists all the cities of California from the hbtn_0d_usa database

USE `hbtn_0d_usa`;

-- Get the state_id of California
SET @state_id := (SELECT id FROM states WHERE name = 'California');

-- List all the cities of California
SELECT * FROM cities WHERE state_id = @state_id ORDER BY id ASC;