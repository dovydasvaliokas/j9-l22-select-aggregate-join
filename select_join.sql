-- ----------------- ONE TO MANY JUNGTIS -----------------------------
-- Sujungsime vartotojų ir adresų lenteles, jog galėtume šalia vartotojo vardo išvesti jo adresą
-- Iš pradžių pasiimu pirmą lentelę (customer)
SELECT *
FROM customer;


-- Užsivadinu customer lentelę c raide (kur man reikės tos lentelės, galėsiu naudoti c)
SELECT *
FROM customer c;

-- Sujungiu su antra (adresų) lentele
SELECT *
FROM customer c
JOIN address a ON a.address_id = c.address_id;

-- Pasirenku, jog iš pirmos lentelės išvestų tik vardą ir pavardę, o iš antros tik adreso pavadinimą
SELECT c.first_name, c.last_name, a.address
FROM customer c
JOIN address a ON a.address_id = c.address_id

-- Be aliasų (be trumpinimų)
SELECT customer.first_name, customer.last_name, address.address
FROM customer
JOIN address ON address.address_id = customer.address_id



-- --------------------------------- MANY TO MANY JUNGTIS ---------------------------------------
-- Išvesime antro filmo visus aktorius
-- Paimame filmo lentelę
SELECT *
FROM film;

-- Sutrumpinu lentelės pavadinimą (alias)
SELECT *
FROM film f;

-- Sujungiame filmų lentelę su sujungimo (filmų_aktorių) lentele
SELECT *
FROM film f
JOIN film_actor fa;

-- Nurodome per kokį stulpelį juos jungti, nes priešingu atveju bus Dekarto sandauga
SELECT *
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id;

-- Jungiame trečią lentelę prieš šitos jungtinės (tarp dviejų)
SELECT *
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id;

-- Nusakome, jog imame tik tai antro filmo informaciją
SELECT *
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE f.film_id = 2;

-- Nusakome kuriuos stulpelius iš šitos didelės bendrinės lentelės mums reikia paimti
SELECT f.title, a.first_name, a.last_name
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id
WHERE f.film_id = 2