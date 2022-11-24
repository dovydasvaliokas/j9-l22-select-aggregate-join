-- Surandame trumpiausią filmo ilgį
SELECT MIN(length)
FROM film;

-- Mažiausios trukmės FILMAI (ne pats ilgis, o patys filmai)
SELECT *
FROM film
WHERE length = (SELECT MIN(length)
				FROM film);

-- Didžiausio replacement_cost vertės radimas
SELECT MAX(replacement_cost)
FROM film;

-- Filmų, kurių replacement_cost yra didžiausias radimas
SELECT *
FROM film
WHERE replacement_cost = (SELECT MAX(replacement_cost)
						  FROM film);


-- Filmai, kurių replacement_cost yra didžiausias, surikiuoti pagal pavadinimą
SELECT *
FROM film
WHERE replacement_cost = (SELECT MAX(replacement_cost)
						  FROM film)
ORDER BY title ASC;

-- Surandame filmų kiekį, kurių nuoma yra 5.99
SELECT COUNT(*)
FROM film
WHERE rental_rate = 5.99;

-- FIlmų trukmės vidurkis
SELECT AVG(length)
FROM film;

-- Filmai, kurių trukmė yra mažesnė, nei visų filmų trukmės vidurkis
SELECT *
FROM film
WHERE length < (SELECT AVG(length)
                FROM film);

-- Visų filmų pakeitimo kainos suma
SELECT SUM(replacement_cost)
FROM film;


-- Filmų, kurių id yra tarp 2 ir 6 trukmių suma
SELECT SUM(length)
FROM film
WHERE film_id > 2 AND film_id < 6


