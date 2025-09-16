-- Select everything from film table
SELECT * FROM film;

-- Count the amount of film_id's in film table
SELECT COUNT(film_id) FROM film;

-- Create an alias
SELECT COUNT(film_id) AS "Total films"
FROM film;

-- Group by rating and aggregate the film_id count
SELECT rating, COUNT(film_id) AS "Total films"
FROM film
GROUP BY rating;

-- Select the average rental duration
SELECT AVG(rental_duration)
FROM film;

-- Create an Alias
SELECT AVG(rental_duration) AS "Average rental period"
FROM film;

-- Group by the rental duration, average the rental rate and give alias
SELECT rental_duration, AVG(rental_rate) AS "Average rental rate"
FROM film
GROUP BY rental_duration;

-- Find the rows with the minimum rental rate
SELECT rental_duration, MIN(rental_rate) AS "Min rental rate"
FROM film
GROUP BY rental_duration;

-- Find the rows with the maximum rental rate
SELECT rental_duration, MAX(rental_rate) AS "Max rental rate"
FROM film
GROUP BY rental_duration;

-- 1. What is the average cost to rent a film in the stores?
select  avg(rental_rate) as "average rental rate"
from film

-- 2. What is the average rental cost of films by rating? On average, what is the cheapest rating of films to rent? Most expensive?
select rating, avg(rental_rate) as "average rental rate"
from film
group  by rating

-- 3. How much would it cost to replace all the films in the database?
select sum(replacement_cost) as "total replacement cost"
from film

-- 4. How much would it cost to replace all the films in each ratings category?
select sum(replacement_cost) as "total replacement cost"
from film
group by rating

-- 5. How long is the longest movie in the database? The shortest?


-- Select the average length of movies by rental rate
SELECT rental_rate, AVG(length) AS "avg length"
FROM film
GROUP BY rental_rate
ORDER BY "avg length";

-- Round the results to use only two decimal places
SELECT rental_rate, ROUND(AVG(length),2) AS "avg length"
FROM film
GROUP BY rental_rate
ORDER BY "avg length";

-- Order by descending values
SELECT rental_rate, ROUND(AVG(length),2) AS "avg length"
FROM film
GROUP BY rental_rate
ORDER BY "avg length" DESC;

-- Limit results to 5
SELECT rental_rate, ROUND(AVG(length),2) AS "avg length"
FROM film
GROUP BY rental_rate
ORDER BY "avg length" DESC
LIMIT 5;

--activity 5
SELECT distinct(first_name), count(first_name) as "actor count"
FROM actor
group by first_name
order by "actor count" desc;

SELECT rating, ROUND(AVG(rental_duration),2) AS "avg duration"
FROM film
GROUP BY rating
ORDER BY "avg duration";

--activity 6 inst
-- First select title and id for movie EARLY HOME
SELECT title, film_id
FROM film
WHERE title = 'EARLY HOME';

-- Using the film_id located in the previous query find it in the inventory table
SELECT *
FROM inventory
WHERE film_id = 268;

-- Use Join to find the inventory, film and store id
SELECT i.inventory_id, i.film_id, i.store_id
FROM inventory i
JOIN film f
ON (i.film_id = f.film_id)
WHERE f.title = 'EARLY HOME';

-- Use Subquery to get the film_id from the query finding EARLY HOME
SELECT *
FROM inventory
WHERE film_id IN
(
  SELECT film_id
  FROM film
  WHERE title = 'EARLY HOME'
);

-- Check to more sure the subquery returned correct value
SELECT *
FROM inventory
WHERE film_id IN (268);

--activity 7 subqueires

select city, city_id
from city
where city in ('Qalyub','Qinhuangdao', 'Qomsheh', 'Quilmes');


--question 2
select district
from address
where city_id IN (
	select city, city_id
	from city
	where city in ('Qalyub','Qinhuangdao', 'Qomsheh', 'Quilmes')
)


--activity 9
select * from inventory

-- Create the subquery
SELECT title,
(SELECT COUNT(inventory.film_id)
	FROM inventory
	WHERE film.film_id = inventory.film_id ) AS "Number of Copies"
FROM film;

--activity 10 

select * from inventory
limit 5


SELECT title
FROM film
WHERE film_id
IN (
  SELECT film_id
    FROM inventory
    WHERE inventory_id
    IN (
        SELECT inventory_id
        FROM rental
        WHERE staff_id=2
        IN (
              SELECT staff_id
              FROM staff
              WHERE last_name = 'Stephens' AND first_name = 'Jon'
            )
        )
  );
