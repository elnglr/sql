SELECT * from film ORDER BY title, description;
SELECT * from film where length <75 AND length >60
SELECT * from film where  rental_rate = 0.99 AND replacement_cost =  12.99 OR replacement_cost = 28.99;
SELECT * from customer where first_name = "Mary"
SELECT * from film where length IS NOT <50 AND rental_rate is NOT = 2.99 OR rental_rate = 4.99

-- odev 2 
SELECT * FROM film WHERE BETWEEN 12.99 AND 16.99
SELECT first_name,last_name FROM Actor WHERE first_name IN('Penelope','Nick','Ed');
SELECT * FROM film WHERE rental_rate IN(0.99,2,99,4,99) AND replacement_cost IN(12.99,15.99,28.99);



--odev 3
--SELECT * from country WHERE country LIKE 'A%a';
SELECT country from country WHERE length (country) >6 AND country LIKE '%n'
SELECT title FROM film WHERE title ILIKE '%t%t%t%t%';
SELECT * From film Where title LIKE 'C%' AND length > 90 AND rental_rate = 2.99 

--odev 4
SELECT DISTINCT replacement_cost
FROM film;


SELECT COUNT(DISTINCT replacement_cost)
FROM film;

SELECT COUNT(*) from film where title = 'T%' and rating= 'G%'

SELECT COUNT(*) from film where length(country ) =5 ;
SELECT COUNT(*) from city where ILIKE city = 'r%';




--odev 5
SELECT title, length from film 
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5


SELECT title, length from film 
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 2
LIMIT 5


SELECT last_name from customer
WHERE store_id = 1
ORDER BY last_name DESC limit 4




--odev 6
SELECT AVG(rental_rate) FROM film

SELECT COUNT(*) FROM film WHERE title ILIKE 'C%'

SELECT MAX(length) FROM film WHERE rental_rate = 0.99

SELECT COUNT( DISTINCT replacement_cost ) FROM film WHERE length > 150


--odev 7#
SELECT rating FROM film GROUP BY rating

SELECT replacement_cost,COUNT(*) FROM film GROUP BY replacement_cost HAVING COUNT(*) > 50
--or SELECT replacement_cost,COUNT(*) FROM film WHERE COUNT(*) > 50 GROUP BY replacement_cost 

SELECT store_id,COUNT(*) FROM customer GROUP BY store_id

SELECT country_id,COUNT(*) FROM city 
GROUP BY country_id 
ORDER BY COUNT(*) DESC 
LIMIT 1;


