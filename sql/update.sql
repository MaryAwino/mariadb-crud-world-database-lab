USE world;

-- Set population to 0 for all rows
UPDATE country
SET Population = 0;

-- Verify the update
SELECT * FROM country;

-- Update population and surface area
UPDATE country
SET Population = 100,
    SurfaceArea = 100;

-- Verify the changes
SELECT * FROM country;
