-- Atnaujiname pirmą filmą - jo pavadinimą
UPDATE film
SET title = "ACADEMY DINOSAUR 2"
WHERE film_id = 1;

-- Laikini pakeitimai su strat transaction (commit juos įtvirtina kaip galutinius)
-- Pakeičiame filmų, kurių nuoma 4.99 buvo, į 5.99
START TRANSACTION;
UPDATE film
SET rental_rate = 5.99
WHERE rental_rate = 4.99;
SELECT * FROM film;
COMMIT;

-- Pirma reikia ištrinti pirmo filmo visus sujungimus, jog leistų foreign key ištrinti patį filmą
DELETE FROM film_actor
WHERE film_id = 1;
-- Po aktorių, reikia ištrinti dar sujugnimus su kategorija
DELETE from film_category
WHERE film_id = 1;
-- Kad ištrinti iš inventoriaus, pirma reikia ištrinti to inventoriaus rental
-- Reikia dar ištrinti iš rental
DELETE FROM rental
WHERE inventory_id >= 1 AND inventory_id <= 8;
-- REikia dar ištrinti jungimą inventory lentelėje
DELETE FROM inventory
WHERE film_id = 1;
-- O tada ištrinu patį filmą
DELETE FROM film
WHERE film_id = 1;