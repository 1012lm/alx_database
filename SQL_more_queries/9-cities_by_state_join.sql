-- Script: 9-cities_by_state_join.sql
-- Description: Lists all cities with their corresponding state names from the hbtn_0d_usa database

USE `hbtn_0d_usa`;

-- List all cities with their corresponding state names
SELECT cities.id, cities.name, states.name
FROM cities
JOIN states ON cities.state_id = states.id
ORDER BY cities.id ASC;