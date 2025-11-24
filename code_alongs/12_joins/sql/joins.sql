FROM
    plants;

FROM
    plant_care;

-- Fungerar inte i -ui
-- LEFT JOIN
SELECT
    *
FROM
    plants p
    LEFT JOIN plant_care pc ON p.plant_id = pc.plant_id;

-- want to see how to take care of my plants
-- those that don't have caring info, I want to know about it
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plants p
    LEFT JOIN plant_care pc ON p.plant_id = pc.plant_id;

-- RIGHT JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM 
    plants p
    RIGHT JOIN plant_care pc ON p.plant_id = pc.plant_id;

-- FULL JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plants p
    FULL JOIN plant_care pc ON p.plant_id = pc.plant_id;

-- CROSS JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plants p
    CROSS JOIN plant_care pc;