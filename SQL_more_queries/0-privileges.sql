-- Script: 0-privileges.sql
-- Description: Lists all privileges of the MySQL users user_0d_1 and user_0d_2 on the server (localhost)

-- Show grants for user_0d_1
SHOW GRANTS FOR 'user_0d_1'@'localhost';

-- Show grants for user_0d_2
SHOW GRANTS FOR 'user_0d_2'@'localhost';