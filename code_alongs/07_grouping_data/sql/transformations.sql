/*
Based on the EDA, I want to do the following

- id -> food
- remove googletopic
- value -> number_of_searches
- week_id -> week column and year column

Very good to SELECT before doing the transformation

 */

SELECT
    id AS food,
    value AS number_of_searches,
    week_id[1:4] AS year,
    week_id[-2:] AS week    
FROM
    food;

-- create a new table with these transformations
CREATE TABLE IF NOT EXISTS cleaned_food AS (
    SELECT
        id AS food,
        value AS number_of_searches,
        week_id[1:4] AS year,
        week_id[-2:] AS week    
    FROM
        food
);
