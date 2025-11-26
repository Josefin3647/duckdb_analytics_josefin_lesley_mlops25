FROM
    plants;

FROM
    plant_care;

-- left join
-- I want to see how to takt care of my plants
-- Those that don´t have a caring info, I want to know about it
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

-- Achieve RIGHT JOIN med LEFT JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plant_care pc
    LEFT JOIN plants p ON p.plant_id = pc.plant_id;

-- INNER JOIN
-- I want to know which plants that have plant care
-- not interested in those without plant care
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plant_care pc
    INNER JOIN plants p ON p.plant_id = pc.plant_id;

-- FULL JOIN
SELECT
    p.plant_id,
    p.plant_name,
    p.type,
    pc.water_schedule,
    pc.sunlight
FROM
    plant_care pc
    FULL JOIN plants p ON p.plant_id = pc.plant_id;