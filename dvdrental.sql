SELECT * from film ORDER BY title, description;
SELECT * from film where length <75 AND length >60
SELECT * from film where  rental_rate = 0.99 AND replacement_cost =  12.99 OR replacement_cost = 28.99;
SELECT * from customer where first_name = "Mary"
SELECT * from film where length IS NOT <50 AND rental_rate is NOT = 2.99 OR rental_rate = 4.99
