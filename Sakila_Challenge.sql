use sakila;

SHOW TABLES;
DESCRIBE `actor`;
DESCRIBE `film`;

-- 1/
SELECT first_name, last_name FROM actor;

-- 2/
SELECT last_name FROM actor WHERE first_name = "John";

-- 3/ 
SELECT first_name FROM actor WHERE last_name = "Neeson";

-- 4/ 
SELECT first_name, last_name FROM actor WHERE (actor_id %10)=0; 

-- 5/ 
SELECT `description` FROM film WHERE film_id = "100";

-- 6/ 
SELECT title FROM film WHERE rating ="R";

-- 7/ 
SELECT title FROM film WHERE rating !="R";

-- 8/
SELECT title FROM film ORDER BY length ASC LIMIT 10;

-- 9/
SELECT title, length FROM film WHERE length= 
(SELECT MAX(length) FROM film); 

-- 10/
SELECT title, special_features FROM film WHERE special_features LIKE "D%";

-- 11/ 
SELECT last_name, COUNT(*) FROM actor GROUP BY last_name HAVING COUNT(*) > 1 ORDER BY last_name DESC;

-- 12/
SELECT last_name, COUNT(*) FROM actor GROUP BY last_name HAVING COUNT(*) > 1 ORDER BY COUNT(*) ASC;

-- 13/ film_actor table and actor table- join! group. count(number of films)
SELECT actor.actor_id, first_name, last_name, COUNT(actor.actor_id) FROM actor 
JOIN film_actor ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id ORDER BY COUNT(actor.actor_id) DESC LIMIT 1;

-- 14/ 

-- 15/ 
SELECT AVG(length) FROM film;

-- 16/


-- 17/
SELECT title FROM film WHERE `description` LIKE "%robot%";

-- 18/ 
SELECT COUNT(title), release_year FROM film WHERE release_year="2010";

-- 19/


