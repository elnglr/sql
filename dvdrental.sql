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

