/* ON SELECTIONNE LA BASE DE DONNEES */
USE theaterDB;

/* REQUETE DE SELECTION */
SELECT film_title, film_year, film_length
FROM film
ORDER BY film_title;