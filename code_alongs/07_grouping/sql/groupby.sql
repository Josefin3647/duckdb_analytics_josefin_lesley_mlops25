SELECT
    food,
    SUM(number_of_searches) AS total_searches
FROM
    cleaned_food
GROUP BY
    food
ORDER BY
    total_searches DESC
LIMIT
    10;

SELECT
    year,
    SUM(number_of_searches) AS total_searches
FROM
    cleaned_food
GROUP BY
    year
HAVING
    total_searches > 400000
ORDER BY
    year;

-- can group by several columns
SELECT
    food,
    year,
    SUM(number_of_searches) AS total_searches
FROM
    cleaned_food
GROUP BY
    food, year
ORDER BY
    food, year;



SELECT
    food,
    year,
    SUM(number_of_searches) AS total_searches
FROM
    cleaned_food
GROUP BY
    food, year
HAVING food in ('pizza', 'sushi')
ORDER BY year, total_searches DESC;

