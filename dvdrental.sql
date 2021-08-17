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




--odev 8

CREATE TABLE employee (
id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR(100),
birthday DATE
);
insert into employee (id, name, email, birthday) values (1, 'Fayth', 'fbloxsom0@bravesites.com', '6/25/1970');
insert into employee (id, name, email, birthday) values (2, 'Gracia', 'gbarnet1@forbes.com', '10/30/2017');
insert into employee (id, name, email, birthday) values (3, 'Blakeley', 'bedgley2@geocities.com', '6/18/2011');
insert into employee (id, name, email, birthday) values (4, 'Modesta', 'mdelepine3@psu.edu', '4/3/2011');
insert into employee (id, name, email, birthday) values (5, 'Faydra', 'fdanielli4@alexa.com', '5/27/1993');
insert into employee (id, name, email, birthday) values (6, 'Angela', 'aduffil5@nyu.edu', '5/11/1986');
insert into employee (id, name, email, birthday) values (7, 'Sibel', 'sbatman6@jalbum.net', '9/15/1964');
insert into employee (id, name, email, birthday) values (8, 'Jayson', 'jsirette7@chronoengine.com', '9/27/2000');
insert into employee (id, name, email, birthday) values (9, 'Babara', 'blauder8@51.la', '4/14/2009');
insert into employee (id, name, email, birthday) values (10, 'Dieter', 'dmcboyle9@blogs.com', '6/11/1972');
insert into employee (id, name, email, birthday) values (11, 'Mimi', 'mimpetta@delicious.com', '3/16/1996');
insert into employee (id, name, email, birthday) values (12, 'Lyman', 'ltimmisb@wikispaces.com', '6/23/1977');
insert into employee (id, name, email, birthday) values (13, 'Rosalynd', 'rhollyerc@usda.gov', '10/20/1987');
insert into employee (id, name, email, birthday) values (14, 'Otis', 'obrigstockd@earthlink.net', '4/24/1999');
insert into employee (id, name, email, birthday) values (15, 'Nicoline', 'npaunsforde@hp.com', '5/12/1987');
insert into employee (id, name, email, birthday) values (16, 'Wylie', 'wtroupf@mtv.com', '10/10/2000');
insert into employee (id, name, email, birthday) values (17, 'Waldon', 'wbraderg@imgur.com', '5/3/1966');
insert into employee (id, name, email, birthday) values (18, 'Fulton', 'flodevickh@purevolume.com', '8/24/1995');
insert into employee (id, name, email, birthday) values (19, 'Alis', 'aloyleyi@mit.edu', '4/2/1986');
insert into employee (id, name, email, birthday) values (20, 'Aurelia', 'areilingj@smugmug.com', '10/13/1990');
insert into employee (id, name, email, birthday) values (21, 'Celinda', 'czanottik@arstechnica.com', '7/18/1973');
insert into employee (id, name, email, birthday) values (22, 'Grove', 'gbradenl@amazon.com', '2/25/1995');
insert into employee (id, name, email, birthday) values (23, 'Killian', 'kvinesm@vinaora.com', '7/26/2007');
insert into employee (id, name, email, birthday) values (24, 'Rollo', 'rglassupn@irs.gov', '6/29/1980');
insert into employee (id, name, email, birthday) values (25, 'Felicity', 'fleteveo@w3.org', '4/2/2002');
insert into employee (id, name, email, birthday) values (26, 'Roxy', 'rhenckep@ucsd.edu', '3/24/1984');
insert into employee (id, name, email, birthday) values (27, 'Regen', 'rhinceq@dell.com', '2/14/1981');
insert into employee (id, name, email, birthday) values (28, 'Garry', 'gflipsenr@ca.gov', '6/25/2010');
insert into employee (id, name, email, birthday) values (29, 'Tonya', 'tmccallions@pbs.org', '9/20/1977');
insert into employee (id, name, email, birthday) values (30, 'Monica', 'mwyncht@redcross.org', '2/17/1982');
insert into employee (id, name, email, birthday) values (31, 'Langston', 'ltoughu@state.tx.us', '12/1/2012');
insert into employee (id, name, email, birthday) values (32, 'Joelie', 'jcrossthwaitev@mit.edu', '4/22/1974');
insert into employee (id, name, email, birthday) values (33, 'Jodie', 'jstanlockw@ibm.com', '6/16/1999');
insert into employee (id, name, email, birthday) values (34, 'Giselle', 'gattox@lycos.com', '8/21/1995');
insert into employee (id, name, email, birthday) values (35, 'Sallee', 'sfinny@ucla.edu', '9/17/1969');
insert into employee (id, name, email, birthday) values (36, 'Caresa', 'cboutellz@devhub.com', '2/17/2009');
insert into employee (id, name, email, birthday) values (37, 'Harlan', 'halibone10@google.com.au', '1/28/1973');
insert into employee (id, name, email, birthday) values (38, 'Guss', 'gsimmank11@about.com', '4/24/1983');
insert into employee (id, name, email, birthday) values (39, 'Barbe', 'bgairdner12@ucsd.edu', '3/4/1990');
insert into employee (id, name, email, birthday) values (40, 'Clarisse', 'csimonson13@vistaprint.com', '8/25/1967');
insert into employee (id, name, email, birthday) values (41, 'Jolene', 'jtomblett14@google.nl', '2/21/2015');
insert into employee (id, name, email, birthday) values (42, 'Pippy', 'pshorte15@kickstarter.com', '10/2/1983');
insert into employee (id, name, email, birthday) values (43, 'Bibbye', 'blaytham16@examiner.com', '4/27/1992');
insert into employee (id, name, email, birthday) values (44, 'Elladine', 'ekaszper17@icq.com', '3/8/2001');
insert into employee (id, name, email, birthday) values (45, 'Stanfield', 'sbrach18@dot.gov', '6/8/2002');
insert into employee (id, name, email, birthday) values (46, 'Sayer', 'soakeby19@cocolog-nifty.com', '2/16/1986');
insert into employee (id, name, email, birthday) values (47, 'Sal', 'sglaserman1a@admin.ch', '8/26/2002');
insert into employee (id, name, email, birthday) values (48, 'Jakob', 'javard1b@imgur.com', '6/15/1990');
insert into employee (id, name, email, birthday) values (49, 'Bartolomeo', 'brustich1c@nih.gov', '6/19/1969');
insert into employee (id, name, email, birthday) values (50, 'Alix', 'arajchert1d@bing.com', '11/8/2015');




UPDATE Employee SET name = 'Elena' WHERE id = 5;
UPDATE Employee SET email = 'gusevchik@gmail.com' WHERE name = 'Elena';
UPDATE Employee SET birthday = '2021/05/29' WHERE email = 'tmccallions@pbs.org';
UPDATE Employee SET birthday = '2021/05/29',name = 'Giselle' WHERE email = '123@gmail.com';
UPDATE Employee SET name = 'Adam', birthday = '2021/05/29' WHERE id = 2;

DELETE from employee where name = 'Alix';
DELETE from employee where email = 'brustich1c@nih.gov';
DELETE From employee where id = 3 OR birthday = '2015-11-08';
DELETE from employee where birthday = '2002-08-26';



--odev 9

SELECT city,country FROM city  JOIN country ON (country.country_id = city.country_id );


SELECT payment_id, first_name, last_name FROM customer INNER JOIN payment ON (payment.customer_id = customer.customer_id);

SELECT first_name,last_name,rental_id FROM customer INNER JOIN rental ON( customer.customer_id = rental.customer_id );

