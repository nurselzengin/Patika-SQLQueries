--ODEV-1
SELECT title, description FROM film;
SELECT * FROM film 
WHERE length >60 AND length<75;
SELECT * FROM film 
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);
SELECT * FROM customer 
WHERE first_name = 'Mary'; sorgusu sonucunda elde ettiğimiz bilgiye göre sorunun cevabı "Smith"tir.
SELECT * FROM film 
WHERE length<50 AND NOT(rental_rate = 2.99 OR rental_rate = 4.99);
--ODEV-2
SELECT replacement_cost FROM film 
WHERE replacement_cost BETWEEN 12.99 AND 16.99 ;
SELECT first_name, last_name FROM actor 
WHERE first_name IN ('Penelope', 'Nick', 'Ed');
SELECT rental_rate, replacement_cost FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99) AND replacement_cost IN (12.99, 15.99, 28.99);
--ODEV-3
SELECT country FROM country 
WHERE country LIKE 'A%a';
SELECT country FROM country 
WHERE country LIKE '_____%n';
SELECT title FROM film
WHERE title ILIKE '%t%t%t%t%';
SELECT * FROM film 
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;
--ODEV-4
SELECT DISTINCT replacement_cost FROM film;
SELECT COUNT(DISTINCT replacement_cost) FROM film;
SELECT DISTINCT(title) FROM film 
WHERE title LIKE 'T%' AND rating = 'G';
SELECT country FROM country 
WHERE country LIKE '_____';
SELECT COUNT(DISTINCT city) FROM city 
WHERE city ILIKE '%r';
--ODEV-5
SELECT * FROM film 
WHERE title LIKE '%n'
ORDER BY length DESC LIMIT 5;
SELECT * FROM film
WHERE title LIKE '%n'
ORDER BY length ASC OFFSET 5 LIMIT 5;
SELECT * FROM customer 
WHERE store_id = 1
ORDER BY last_name DESC LIMIT 4;
