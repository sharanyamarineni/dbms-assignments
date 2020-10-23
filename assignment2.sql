SELECT COUNT(film_id) FROM film WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id IN (SELECT category_id FROM category WHERE name='Documentary')) AND special_features LIKE '%Deleted Scenes%';

SELECT COUNT(*) FROM rental WHERE inventory_id IN (select inventory_id from film_category WHERE category_id IN (SELECT category_id from category where name='Sci-Fi')) AND staff_id IN (SELECT staff_id FROM staff WHERE first_name='Jon' AND last_name='Stephens');

SELECT SUM(amount) FROM payment WHERE rental_id IN (SELECT rental_id FROM rental WHERE inventory_id IN (SELECT inventory_id FROM inventory WHERE film_id IN (SELECT film_id FROM film_category WHERE category_id IN (SELECT category_id FROM category WHERE name='Animation'))));
select total_sales from sales_by_film_category where category='Animation';

SELECT category FROM film_list WHERE fid IN (SELECT film_id  FROM inventory WHERE inventory_id IN (SELECT inventory_id FROM rental WHERE customer_id IN (SELECT customer_id FROM customer WHERE first_name='PATRICIA' AND last_name='JOHNSON'))) GROUP BY category ORDER BY COUNT(category) DESC LIMIT 3;

SELECT COUNT(*) FROM rental WHERE inventory_id IN (SELECT inventory_id FROM inventory WHERE film_id IN (SELECT film_id FROM film WHERE rating='R')) AND customer_id IN (SELECT customer_id FROM customer WHERE first_name='SUSAN' AND last_name='WILSON');