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

