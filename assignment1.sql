SELECT film_id, title FROM film WHERE rating = 'PG-13' AND film_id IN (SELECT film_id FROM film_category WHERE category_id IN (SELECT category_id FROM category WHERE category.name = 'Comedy'));

SELECT title  FROM film f JOIN inventory i ON f.film_id=i.film_id JOIN rental r ON r.inventory_id=i.inventory_id JOIN film_category fc ON fc.film_id=f.film_id JOIN category c ON c.category_id=fc.category_id
WHERE c.name='horror' GROUP BY title
ORDER BY COUNT(title) DESC LIMIT 3;

SELECT * FROM customer_list
WHERE country = 'India' AND ID IN (SELECT r.customer_id FROM film_list fl, inventory i,rental r WHERE fl.category = 'Sports'
AND fl.FID = i.film_id AND r.inventory_id = i.inventory_id
GROUP BY r.customer_id);

SELECT * FROM customer WHERE address_id IN (SELECT address_id FROM address WHERE city_id IN (SELECT city_id FROM city WHERE country_id IN (SELECT country_id FROM country WHERE country='Canada'))) 
AND customer_id IN (SELECT customer_id  FROM rental  WHERE inventory_id IN 
(SELECT inventory_id FROM inventory WHERE film_id IN (SELECT film_id FROM film_actor WHERE actor_id IN 
(SELECT actor_id FROM actor WHERE first_name='NICK' AND last_name='WAHLBERG'))));

SELECT count(title) FROM film f JOIN  film_actor fa ON f.film_id=fa.film_id JOIN actor a ON a.actor_id=fa.actor_id WHERE a.first_name='SEAN' AND a.last_name='WILLIAMS';







