FROM
    food;

SELECT DISTINCT
    id
FROM
    food;

SELECT DISTINCT
    id
FROM
    food
ORDER BY
    id;

-- filter out sertain weeks
SELECT
    *
FROM
    food
WHERE
    week_id BETWEEN '2011-01' AND '2011-04';

DESC TABLE food;