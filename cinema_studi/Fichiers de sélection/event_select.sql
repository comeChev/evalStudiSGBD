/* ON SELECTIONNE LA BASE DE DONNEES */
USE theaterDB;

/* REQUETE DE SELECTION */
SELECT 
e.event_date AS 'Date de la séance',
f.film_title AS 'Film',
r.room_number AS 'Salle n°',
t.theater_name AS 'Cinéma',
tc.complex_name AS 'Enseigne'
FROM event e
JOIN film f ON f.film_id = e.film_id
JOIN room r ON r.room_id = e.room_id
JOIN theater t ON t.theater_id = r.theater_id
JOIN theater_complex tc ON tc.complex_id = t.complex_id
ORDER BY e.event_date;