-- Paimame visas eilutes ir jų visus stulpelius iš actor lentelės
SELECT *
FROM actor;

-- Paimame visas eilutes ir id bei first_name stuleplius iš lentelės
SELECT actor_id, first_name
FROM actor;

-- Paimame visus stulpelius aktoriaus, kurio id yra 25
SELECT *
FROM actor
WHERE actor_id = 25;

-- Paimame visus aktorous nuo 25 id iki 50
SELECT *
FROM actor
WHERE actor_id > 25 AND actor_id < 50;

-- Randame filmus, kurių nuomos mokestis yra 4.99
SELECT *
FROM film
WHERE rental_rate = 4.99;

-- Randame filmus, kurie kainuoja daugiau nei 0.99 ir mažiau nei 4.99
SELECT *
FROM film
WHERE rental_rate < 4.99 AND rental_rate > 0.99;

-- Surikiuojame visus filmus pagal jų ilgį didėjančia tvarka
SELECT *
FROM film
ORDER BY length ASC;

-- Surikiuojame filmus, kurių nuoma yra 2.99, mažėjančia tvarka
SELECT *
FROM film
WHERE rental_rate = 2.99
ORDER BY length DESC;

-- Gauname filmus, kurių nuoma yra 5.99 bet tik pirmus 50
SELECT film_id, title
FROM film
WHERE rental_rate = 5.99
LIMIT 50;

-- Grąžina visus filmus nuo 10 iki 60 (nes pirmas skaičius nuo kurio, o antras kiek)
SELECT *
FROM film
LIMIT 10, 50;
