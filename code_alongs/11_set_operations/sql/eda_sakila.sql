DESC;

-- 1000 films
FROM film;

DESC TABLE film;

SELECT DISTINCT rating FROM film;

-- 5462 > 1000 films -> Actors kan be in one or more movies
FROM film_actor;

FROM actor;
FROM category;

SELECT
    'customer' AS type,
    c.first_name || ' ' || c.last_name AS name
FROM customer c -- alias
WHERE c.first_name ILIKE 'b%';

