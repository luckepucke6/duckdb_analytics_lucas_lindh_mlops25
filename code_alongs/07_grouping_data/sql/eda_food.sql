/* 
EDA - Exploratory Data Analysis

- explore a dataset with purpose to understand it
- find some insights
 */
FROM
    food;

SELECT DISTINCT
    id
FROM
    food;

SELECT DISTINCT
    id
FROM
    food ORDER id;

-- filter out certain weeks
SELECT
    *
FROM
    food
WHERE
    week_id BETWEEN '2011-01' AND '2011-04';


DESC TABLE food;