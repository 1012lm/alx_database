#!/bin/bash

# Script: 9-full_creation.sh
# Description: Creates the table second_table and inserts multiple rows

DB_NAME="$1"

# Create table if it doesn't exist
echo "CREATE TABLE IF NOT EXISTS ${DB_NAME}.second_table (
    id INT,
    name VARCHAR(256),
    score INT
);" | mysql -h localhost -u root -p

# Insert multiple rows
echo "INSERT INTO ${DB_NAME}.second_table (id, name, score) VALUES (1, 'John', 10), (2, 'Alex', 3), (3, 'Bob', 14), (4, 'George', 8);" | mysql -h localhost -u root -p

echo "Records inserted successfully."