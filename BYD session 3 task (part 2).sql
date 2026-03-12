-- First Query
SELECT customer.customer_id,customer.first_name, SUM(payment.amount) "Total Amount"
FROM customer
INNER JOIN payment
ON customer.customer_id=payment.customer_id
GROUP BY customer.customer_id 
ORDER BY customer.customer_id

-- Second Query
SELECT actor.last_name,actor.actor_id,film_actor.film_id
FROM actor
INNER JOIN film_actor
ON actor.actor_id=film_actor.actor_id
WHERE film_actor.film_id=12 AND actor.last_name LIKE '%e'

-- Third Query
SELECT film.film_id,film.title,film.length
FROM film 
WHERE film.length>=90 AND film.length<=120
ORDER BY film.length

