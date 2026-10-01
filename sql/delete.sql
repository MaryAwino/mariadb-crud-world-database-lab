USE world;

-- Disable foreign key checks as required by the lab
SET FOREIGN_KEY_CHECKS = 0;

-- Delete all rows from the country table
DELETE FROM country;

-- Verify that the table is empty
SELECT * FROM country;
