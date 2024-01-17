--1. How many actors are there with the last name ‘Wahlberg’?
-- Answer: 2
SELECT COUNT(*) AS num_actors
FROM actor
WHERE last_name = 'Wahlberg';


--2. How many payments were made between $3.99 and $5.99?
-- Answer: 0
SELECT COUNT(*) AS num_payments
FROM payment
WHERE amount >= 3.99 AND amount < 5.99;

--3. What film does the store have the most of? (search in inventory)
-- Answer: Garden Island, total 8
SELECT f.title, COUNT(*) AS copies
FROM film f
JOIN inventory i ON f.film_id = i.film_id
GROUP BY f.film_id, f.title
ORDER BY copies DESC
LIMIT 1;

--4. How many customers have the last name ‘William’?
-- Answer: 0 customers have the last name William
SELECT COUNT(*) AS num_customers
FROM customer
WHERE last_name = 'William';

--5. What store employee (get the id) sold the most rentals?
-- Answer: staff_id: 1, rentals_sold: 8,040
SELECT s.staff_id, COUNT(*) AS rentals_sold
FROM staff s
JOIN rental r ON s.staff_id = r.staff_id
GROUP BY s.staff_id
ORDER BY rentals_sold DESC
LIMIT 1;

--6. How many different district names are there?
-- Answer: 378 different district names
SELECT COUNT(DISTINCT district) AS num_districts
FROM address;

--7. What film has the most actors in it? (use film_actor table and get film_id)
-- Answer: film_id 508 has the most actors, counting up to 15
SELECT film_id, COUNT(*) AS num_actors
FROM film_actor
GROUP BY film_id
ORDER BY num_actors DESC
LIMIT 1;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
-- Answer: 0 customers
SELECT COUNT(*) AS num_customers
FROM customer
WHERE store_id = 1 AND last_name LIKE '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
-- Answer: 3 individuals between Ids 380-430, spent more than 250
SELECT amount, COUNT(*) AS num_rentals
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
WHERE r.customer_id BETWEEN 380 AND 430
GROUP BY amount
HAVING COUNT(*) > 250;

--10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
-- Answer: number of ratings categories: 5, rating with the most total movies: PG-13 at 224 total
SELECT COUNT(DISTINCT rating) AS number_of_rating_categories
FROM film;

SELECT rating, COUNT(*) AS total_movies
FROM film
GROUP BY rating
ORDER BY total_movies DESC
LIMIT 1;
