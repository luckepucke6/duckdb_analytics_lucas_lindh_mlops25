FROM
    actor;

-- 1000 films
FROM
    film;

DESC TABLE film;

SELECT DISTINCT rating FROM film;

-- 5462 > 100 films -> actors can play _> 1 film
FROM
    film_actor;

-- ex insight
-- actor_id 1 -> Penelope Guiness
-- plays in movies: academy dinosaur, anaconda confessions, ...
FROM actor:

-- bridge table between film and category
-- it holds film_id and category_id
FROM
    category;

SELECT 
    'customer' AS type,
    c.first_name || ' ' || c.last_name AS name
FROM customer c; -- alias

-- all customers first name starting with B
SELECT 
    'customer' AS type,
    c.first_name || ' ' || c.last_name AS name
FROM customer c -- alias
WHERE c.first_name ILIKE 'b%';




FROM 
    film_category;

FROM
    address;

FROM
    city;

FROM
    country;


FROM
    customer;

SELECT
    COUNT(*) AS number_movies,
    COUNT(DISTINCT title) AS unique_number_of_titles
FROM
    film;

SELECT DISTINCT
    rating
FROM
    main.film;

DESC TABLE film_actor;

FROM
    customer;

SELECT
    'customer' AS TYPE,
    c.first_name,
    c.last_name,
FROM
    customer c
WHERE
    c.first_name LIKE 'D%';

-- more EDAs left for the reader